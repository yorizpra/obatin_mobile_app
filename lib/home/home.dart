import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/chat.dart';
import 'package:obatin_app/home/body.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearch = Text("Obatin",
      style: GoogleFonts.lobster(fontWeight: FontWeight.w600, fontSize: 25));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: cusSearch,
        backgroundColor: kPrimaryColor,
        leading: Container(
          padding: EdgeInsets.all(10.0),
          child: Image(
            image: AssetImage('images/logo.png',),
          ),
        ),
          actions: <Widget>[
          IconButton(
          onPressed: () {
            setState(() {
              if (this.cusIcon.icon == Icons.search) {
                this.cusIcon = Icon(Icons.cancel_outlined);
                this.cusSearch = Padding(
                padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                      width: 220.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                        child: TextField(
                          textInputAction: TextInputAction.search,
                          cursorColor: kWhiteColor,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Cari produk",
                            hintStyle: TextStyle(color: kWhiteColor),
                          ),
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
              else {
                this.cusIcon = Icon(Icons.search);
                this.cusSearch = Text("Obatin");
              }
            });
          },
          icon: cusIcon,
          ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));
              },
            ),
        ],
      ),
      body: Body(),
    );
  }
}