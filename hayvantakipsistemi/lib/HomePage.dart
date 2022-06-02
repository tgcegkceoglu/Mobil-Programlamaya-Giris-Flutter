import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hayvantakipsistemi/model/floatingactionbutton.dart';
import 'package:hayvantakipsistemi/model/takvim.dart';
import 'package:hayvantakipsistemi/model/takvimicon.dart';
import 'package:hayvantakipsistemi/model/tohumlamasayfasi/tohumlamaekle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _zaman=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 20, left: 16, right: 16, top: 40),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Text("Tuğçe Gökçeoğlu",
                    style: TextStyle(
                        color: Color(0xFF375BA3),
                        fontSize: 24,
                        fontWeight: FontWeight.w600)),
                Spacer(),
                IconButton(
                    onPressed: () {
                      _cikisYap(context);
                      Navigator.pushNamed(context, '/girissayfasi');
                    },
                    icon: Icon(
                      Icons.logout_outlined,
                      color: Color(0xFF375BA3),
                    )),
              ],
            ),
           
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Text("Hızlı İşlem"),
                ],
              ),

            ),
        
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                      buildcontainericon(
                          context,
                          "Hayvan Ekle",
                          Icon(Icons.add, color: Color(0xFF30A0BD)),
                          '/hayvanekle'),
                      buildcontainericon(
                          context,
                          "Notlar",
                          Icon(Icons.note_add, color: Color(0xFF30A0BD)),
                          '/notlar'),
                      buildcontainericon(
                          context,
                          "Hayvanlarım",
                          FaIcon(FontAwesomeIcons.cow,
                              color: Color(0xFF30A0BD)),
                          '/hayvanlarim'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildcontainericon(
                          context,
                          "Aşılama",
                          FaIcon(FontAwesomeIcons.syringe,
                              color: Color(0xFF30A0BD)),
                          '/asilama'),
                      buildcontainericon(
                          context,
                          "Hastalık",
                          Icon(Icons.sick_rounded, color: Color(0xFF30A0BD)),
                          '/hastalik'),
                      buildcontainericon(
                          context,
                          "Tohumlama",
                          FaIcon(
                            FontAwesomeIcons.seedling,
                            color: Color(0xFF30A0BD),
                          ),
                          '/tohumlama'),
                    ],
                  ),
                ),
              ],
            ),
          
          ]),
        ),
      ),
    );
  }

  void _cikisYap(BuildContext context) async {
    await _auth.signOut();
    await GoogleSignIn().signOut();
  }
}

buildcontainericon(context, String baslik, icon, String named) {
  return Padding(
    padding: const EdgeInsets.only(right: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, named);
          },
          child: Container(
            width: 150,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: Color(0xFF30A0BD))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: icon,
                ),
                SizedBox(
                  height: 2,
                  width: 10,
                ),
                Text(
                  baslik,
                  style: TextStyle(
                      color: Color(0xFF30A0BD), fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
