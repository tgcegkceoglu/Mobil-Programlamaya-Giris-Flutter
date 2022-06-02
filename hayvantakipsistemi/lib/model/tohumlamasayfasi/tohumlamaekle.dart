
import 'package:flutter/material.dart';
import 'package:hayvantakipsistemi/model/hastalikbilgileri/hastalikekle.dart';
import 'package:hayvantakipsistemi/model/takvimicon.dart';
import 'package:hayvantakipsistemi/model/textfieldarama.dart';
import 'package:hayvantakipsistemi/model/veriler.dart';
import 'package:hayvantakipsistemi/view/tohumlamasayfasi.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class TohumalamaEkleModal extends StatefulWidget {
  const TohumalamaEkleModal({Key? key}) : super(key: key);

  @override
  State<TohumalamaEkleModal> createState() => _TohumalamaEkleModalState();
}

Veriler veri = Veriler();
final dateFormat = DateFormat('dd/MM/yyyy');
CalendarFormat format = CalendarFormat.month;
DateTime selectedDay = DateTime.now();
DateTime focusedDay = DateTime.now();
TextEditingController _hayvankupenocontroller = TextEditingController();
TextEditingController _hayvaninirkicontroller = TextEditingController();
TextEditingController _boganinkupenocontroller = TextEditingController();
TextEditingController _boganinirkicontroller = TextEditingController();
TextEditingController _tohumlamayiyapanvetcontroller = TextEditingController();
TextEditingController _tohumlamabaslangiccontroller = TextEditingController();
TextEditingController _tohumlamabitiscontroller = TextEditingController();

class _TohumalamaEkleModalState extends State<TohumalamaEkleModal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
            padding:
                const EdgeInsets.only(right: 16, left: 16, bottom: 16, top: 16),
            child: Container(
                padding: EdgeInsets.only(right: 35, left: 35),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(
                    colors: [Color(0xFF375BA3), Color(0xFF29E3D7)],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                   
                  },
                  child: Text(
                    "Tohumlamayı Ekle",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ))),
      body: ListView(
        children: [
        /*  InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SearchSelectPage(
                    controller: _hayvankupenocontroller,
                    inputType: TextInputType.number,
                    hinttext: "Hayvanın Küpe Numarasını Seçiniz...",
                    items: veri.kupeno,
                    selectedItem: _hayvankupenocontroller.text,
                    onSelection: (v) {
                      _hayvankupenocontroller.text = v;
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: Color(0xFF375BA3),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: TextField(
                  enabled: false,
                  controller: _hayvankupenocontroller,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "Tohumlanan Hayvanın Küpe Numarası",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ), */
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SearchSelectPage(
                    controller: _hayvaninirkicontroller,
                    inputType: TextInputType.text,
                    hinttext: "Tohumlanan Hayvanın Irkını Seçiniz...",
                    items: veri.irk,
                    selectedItem: _hayvaninirkicontroller.text,
                    onSelection: (v) {
                      _hayvaninirkicontroller.text = v;
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: Color(0xFF375BA3),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: TextField(
                  enabled: false,
                  controller: _hayvaninirkicontroller,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "Tohumlanan Hayvanın Irkını Seçiniz",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SearchSelectPage(
                    controller: _boganinkupenocontroller,
                    inputType: TextInputType.number,
                    hinttext: "Boğanın Küpe Numarasını Seçiniz...",
                    items: veri.irk,
                    selectedItem: _boganinkupenocontroller.text,
                    onSelection: (v) {
                      _boganinkupenocontroller.text = v;
                      setState(() {});
                    },
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: Color(0xFF375BA3),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: TextField(
                  enabled: false,
                  controller: _boganinkupenocontroller,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "Boğanın Küpe Numarasını Seçiniz",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SearchSelectPage(
                    controller: _boganinkupenocontroller,
                    inputType: TextInputType.text,
                    hinttext: "Boğanın Irkını Seçiniz...",
                    items: veri.irk,
                    selectedItem: _boganinirkicontroller.text,
                    onSelection: (v) {
                      _boganinirkicontroller.text = v;
                      setState(() {});
                    },
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: Color(0xFF375BA3),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: TextField(
                  enabled: false,
                  controller: _boganinirkicontroller,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "Boğanın Irkını Seçiniz",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //Tohumlama Yapan Veteriner Textfield
          Container(
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 1,
                color: Color(0xFF375BA3),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: TextField(
              controller: _tohumlamayiyapanvetcontroller,
              cursorColor: Colors.black,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                  filled: true,
                  hintText: "Tohumlamayı Yapan Veteriner",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  fillColor: Colors.white,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none),
            ),
          ),
          //tohumlama başlangıç tarihi
          TakvimIcon(
              controller:_tohumlamabaslangiccontroller,
              focusedDay: DateTime.now(),
              selectedDay: DateTime.now(),
              labeltext: "Tohumlama Başlangıç Tarihi"),
          SizedBox(
            height: 8,
          ),
          TakvimIcon(
              labeltext: "Tohumlama Bitiş Tarihi",
              controller:_tohumlamabitiscontroller,
              focusedDay: focusedDay,
              selectedDay: selectedDay),
        ],
      ),
    );
  }
} 
