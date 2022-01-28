import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Myhomepage extends StatelessWidget {
  const Myhomepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Omlet'),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              profilepic(),
              menu(),
              food(),
              profileinternet(),
              date(),
              time(),
              headline(),
              line(),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 4,
                    
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                  "พร้อมแล้ว เริ่มทำกันได้เลย",
                  style: GoogleFonts.mali(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                ),
                    ),
                    
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 4,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "ใครคิดว่า “ออมเลตชีส” ทำยาก เห็นสูตรนี้ต้องเปลี่ยนใจแล้ว! อีกหนึ่งเมนูไข่ทำง่าย ๆ อารมณ์ดี๊ดี ไว้สำหรับเป็นอาหารเช้าในวันสบาย ๆ ที่อยากทำอาหารเช้ากินเอง หรือจะทำให้เด็ก ๆ กินก็ได้นะ รับรองว่าเป็นที่ถูกอกถูกใจแน่นอน เพราะมีทั้งไข่ออมเลตนุ่ม ๆ และชีสสุดยืดด ของโปรด ถ้าพร้อมแล้วไปเข้าครัวดูวิธีทำออมเลตกันเลย  ",
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(color: Colors.black,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget profileinternet() {
    return CircleAvatar(
      radius: 100,
      backgroundColor: Colors.grey[300],
      child: CircleAvatar(
        radius: 95,
        backgroundImage: NetworkImage(
         'https://scontent.fhdy2-1.fna.fbcdn.net/v/t1.6435-9/120910918_395762718091663_289044760466586677_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHqEWVO9IQUCBWzV03rQeNNFEqT9WdAgdcUSpP1Z0CB16qVeV9Ta8KerqdxCeXQOmXFzbQCIOu-mlOGpUkiqfKM&_nc_ohc=ft744lAxF88AX8oyWf7&_nc_ht=scontent.fhdy2-1.fna&oh=00_AT9Q9iLAwHPy9ie9pVP8tWPcZ2g7x8LMn93gpYeDbRZFbg&oe=621ACFDE'),
      ),
     
    );
  }

  Image profilepic() {
    return Image.asset(
            'images/omlet_cover.jpg',
            fit: BoxFit.cover,
            );
  }

  

  Row menu() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "วิธีทำ “ออมเลตชีส” เมนูไข่เนื้อนุ่ม ชีสเยิ้ม อิ่มท้องง่าย ๆ ในยามเช้า! ",
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                    fontSize: 18,
                    ),
                  ),
                ),
              ),
            
            ],
          );
  }

 Row food() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "แจกสูตรอาหารเช้าง่าย ๆ ออมเลตชีส เมนูไข่ของโปรดทุกรุ่นทุกวัย เนื้อไข่นุ่มมมละมุนลิ้น แถมชีสเยิ้ม ๆ ยั่วใจ ทำตามกันได้ที่บ้านเลย ขนาดนี้ต้องลองทำแล้ว! ",
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          );
  }

  Row date() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "วันที่ 17 ธ.ค. 2564  โดย เชฟฟีร่า",
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          );
  }
    
    Widget time() {

    return Container(
      color: Colors.orange[200],
      child: Row(

      
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: FaIcon(
                  FontAwesomeIcons.stopwatch,
                  color: Colors.blue,
              ),
                ),
            
               Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: FaIcon(
                FontAwesomeIcons.utensils,
                color: Colors.orange,
              ),
               ),

               Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: FaIcon(
                FontAwesomeIcons.fireAlt,
                color: Colors.red,
              ),
               ),
               
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: FaIcon(
                FontAwesomeIcons.user,
                color: Colors.green,
              ),
                ),
            ],
    ),
        );
          
  }


    Widget headline() {
    return Container(
      color: Colors.orange[200],
    
    child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "เวลาเตรียม",
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "เวลาปรุง",
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "แคลอรี่",
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "สำหรับ",
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
    );
  }

    Widget line() {
    return Container(
      
      color: Colors.orange[200],
      

    child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "15 นาที",
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "20 นาที",
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "300 Kcal/เสิร์ฟ",
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "1 เสิร์ฟ",
                  style: GoogleFonts.itim(
                    textStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
   