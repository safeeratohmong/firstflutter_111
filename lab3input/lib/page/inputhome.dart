import 'dart:html';

import 'package:flutter/material.dart';
import 'package:lab3input/models/like.dart';
import 'package:lab3input/models/year.dart';
class Inputhomepage extends StatefulWidget {
  const Inputhomepage({ Key? key }) : super(key: key);

  @override
  _InputhomepageState createState() => _InputhomepageState();
}

class _InputhomepageState extends State<Inputhomepage> {

   final _formKey = GlobalKey<FormState>();

  TextEditingController _firstname = TextEditingController();
  TextEditingController _lastname = TextEditingController();
  TextEditingController _pasw = TextEditingController();

  // Radio
  String? groupYear;
  List<Year>? years;
  String? groupValue;
  String? groupValuee;

  // Checkbox
  List checkedLike = []; // เก็บค่าที่เลือก
  List<Like>? likes; // เก็บรายการเครื่องดื่มจากคลาส

  // Dropdown
  List<ListItem> types = ListItem.getItem();
  late  List<DropdownMenuItem<ListItem>> _dropdownMenuItem;
  late ListItem _selectedTypeItme;

 

// get item => null;

  @override

  void initState() {
    super.initState();
    years = Year.getYear();
    likes = Like.getLike();

    _dropdownMenuItem = createDropdownMenuItem(types);
    _selectedTypeItme = _dropdownMenuItem.first.value!;


  }

  List<DropdownMenuItem<ListItem>> createDropdownMenuItem(
    List<ListItem>? types) {
    List<DropdownMenuItem<ListItem>> items = [];

    for (var type in types!) {
      items.add(
        DropdownMenuItem(
          child: Text(type.name!),
          value: type,
        )
      ); 
    }
    return items;
  }

 
   @override
   Widget build(BuildContext context) {
     return Scaffold
     (
       appBar: AppBar(
        title: const Text('Input widgets'), 
       ), 
       body: Form(
        key: _formKey,
        child: ListView(
          children: [
            firstname(),
            lastname(),
            studentid(),

            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Text('โปรดเลือกชั้นปีที่กำลังศึกษา'),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: createRadioYear(),
              ),
            ),
            Text('Radio Selected: $groupYear'),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Text('โปรดเลือกหลักสูตรที่ศึกษา'),
            ),
            RadioListTile(
              title: Text('วิทยาการคอมพิวเตอร์'), 
              groupValue: groupValuee, 
              onChanged: (value) {
                setState(() {
                  groupValuee = value as String?;
                });
              }, value: '',),

                RadioListTile(
              title: Text('เทคโลโลยีสารสนเทศ'), 
              groupValue: groupValuee, 
              onChanged: (value) {
                setState(() {
                  groupValue = value as String?;
                });
              }, value: '',),

             Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Text('โปรดเลือกคณะที่ศึกษา'),
            ),
            
            DropdownButton(
              value: _selectedTypeItme,
              items: _dropdownMenuItem,
               onChanged: (ListItem? value) {
                 setState(() {
                   _selectedTypeItme = value!;
                 });
                },
               ),
               Text('Dropdown selected:  ${_selectedTypeItme.value}'),

                Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Text('โปรดเลือกรายการอาหารและเครื่องดื่มที่ชอบ'),
            ),

               Column(
              children: createCheckboxLike(),
            ),
            const SizedBox(height: 16),

            ElevatedButton(onPressed: (){
              
              if(_formKey.currentState!.validate()){
                print(_firstname.text);
                print(_lastname.text);
                print(_pasw.text);
              }
            }, 
            child: Text('ยืนยัน'),
            ),
          ],
        ),
      ),
     );
   }
 }
    

  Padding studentid() {
    var _pasw;
    return Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: TextFormField(
              controller: _pasw,
              obscureText: true,
              validator: (value) {
                if(value!.isEmpty){
                  return "Please Enter Student ID";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Student ID',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 3,
                  )
                )
              ),
              ),
            ),
          );
  }

  Padding lastname() {
    var _lastname;
    return Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: TextFormField(
              controller: _lastname,
              validator: (value) {
                if(value!.isEmpty){
                  return "Please Enter Lastname";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Lastname',
                prefixIcon: Icon(Icons.people_outline_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 3,
                  )
                )
              ),
              ),
            ),
          );
  }

  Padding firstname() {
    var _firstname;
    return Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: TextFormField(
              controller: _firstname,
              validator: (value) {
                if(value!.isEmpty){
                  return "Please Enter Firstname";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Firstname',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 3,
                  )
                )
              ),
              ),
            ),
          );
  }

  List<Widget> createRadioYear() {
    List<Widget> listYear = [];

    var years;
    for (var year in years!) {
      var groupYear;
      listYear.add(
        RadioListTile<dynamic>(
                    title: Text(year.thName!), 
                    value: year.yearValue,
                    groupValue: groupYear,
                    onChanged: (value) {
                      setState(() {
                        groupYear = value;
                      });  
                    },
                  ),
      );
    }
    return listYear;
  }

void setState(Null Function() param0) {
}

  List<Widget> createCheckboxLike() {
      List<Widget> listLike = [];

      var likes;
      for (var like in likes!) {
        listLike.add(CheckboxListTile(
          value: like.checked,
          title: Text(like.thName!),
          subtitle: Text('${like.price} บาท'), 
          onChanged: (value){
            setState(() {
              like.checked = value;
            });

            if (value!) {
              var checkedLike;
              checkedLike.add(like.thName);
            }
            Object? checkedLike;
            print(checkedLike);

          },
        ));
        
      }
        return listLike;
  }      
 

class ListItem {
  int? value;
  String? name;

//Construtor
  ListItem(this.value, this.name);

  static getItem() {
    return[
      ListItem(1, 'คณะศึกษาศาสตร์'),
      ListItem(2, 'คณะวิทยาศาสตร์'),
      ListItem(3, 'คณะวิทยาการสุขภาพและการกีฬา'),
      ListItem(4, 'คณะเทคโนโลยีและการพัฒนาชุมชน'),
      ListItem(5, 'คณะนิติศาสตร์'),
      ListItem(6, 'คณะวิศวกรรมศาสตร์'),
      ListItem(7, 'คณะพยาบาลศาสตร์'),
      ListItem(8, 'คณะอุตสาหกรรมเกษตรและชีวภาพ'),
    ];
  }
}