import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  get child => null;
  @override
  Widget build(BuildContext context) {
    var icons;
    return Scaffold(
      appBar: AppBar(
        title: Text("622021111"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('images/profileme.jpg',
            // fit: BoxFit.cover,
            // ),
            profileinternet(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  Text(
                    "My name is ซาฟีรา",
                    style: GoogleFonts.itim(
                        textStyle: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.cake),
                  Text(
                    "10/05/1999",
                    style: GoogleFonts.itim(
                        textStyle: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 4,
                        )),
                  ),
                  Text(
                    'About Me',
                    style: GoogleFonts.itim(
                        textStyle: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 4,
                        )),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.cake),
                      Text(
                        "อาหารที่ชอบ : ต้มยำ",
                        style: GoogleFonts.itim(
                            textStyle: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Icon(Icons.cake),
                          Text(
                            "คติประจำใจ : ทำวันนี้ให้ดีที่สุด",
                            style: GoogleFonts.itim(
                                textStyle: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.facebook),
                            Text(
                              "Facebook : AnaSafeera Smile",
                              style: GoogleFonts.itim(
                                  textStyle: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.photo),
                                  Text(
                                    "Instagram : sqfeerq_._",
                                    style: GoogleFonts.itim(
                                        textStyle: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    )),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.email),
                                      Text(
                                        "email : safeera6591@gmail.com",
                                        style: GoogleFonts.itim(
                                            textStyle: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.phone),
                                      Text(
                                        "Tel : 0614670812",
                                        style: GoogleFonts.itim(
                                            textStyle: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget profileinternet() {
    return CircleAvatar(
      radius: 80,
      backgroundColor: Colors.blue,
      child: CircleAvatar(
        radius: 75,
        backgroundImage: NetworkImage(
            'https://scontent.fbkk29-2.fna.fbcdn.net/v/t39.30808-6/256666186_648883656112900_3322184039172287495_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGKpB-hvkSLk6f5-77sEYKelZM8eBI4ah2Vkzx4EjhqHaMNVVigaXgKKTAVvRe9yRzRMJtrvnGoMkLIlQjb85hs&_nc_ohc=SMRPTW6PFq0AX-kT52i&_nc_zt=23&_nc_ht=scontent.fbkk29-2.fna&oh=00_AT9qCI1x17VPqAPkrcakEplgnxvo7MGuCJEa7Yr7eOfEMg&oe=61CCA691'),
      ),
    );
  }
}
