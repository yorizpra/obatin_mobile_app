import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/halaman/akun/logout.dart';
import 'package:obatin_app/halaman/akun/notifikasi.dart';
import 'package:obatin_app/halaman/akun/profil.dart';
import 'package:obatin_app/halaman/akun/rating.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profil()));
              },
              child: ListTile(
                leading: Icon(Icons.account_circle, size: 50.0, color: Colors.redAccent),
                title: Text("Profil", style: GoogleFonts.varelaRound(fontSize: 25.0, fontWeight: FontWeight.w600),),
                subtitle: Text("Profil saya", style: GoogleFonts.varelaRound(fontSize: 15.0, fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.keyboard_arrow_right, size: 50.0, color: kBlackColor,),
              ),
            ),
            Divider(color: kBlackColor),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Notifikasi()));
              },
              child: ListTile(
                leading: Icon(Icons.notifications, size: 50.0, color: Colors.redAccent),
                title: Text("Notifikasi", style: GoogleFonts.varelaRound(fontSize: 25.0, fontWeight: FontWeight.w600),),
                subtitle: Text("Notifikasi yang selalu update", style: GoogleFonts.varelaRound(fontSize: 15.0, fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.keyboard_arrow_right, size: 50.0, color: kBlackColor,),
              ),
            ),
            Divider(color: kBlackColor),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Rating()));
              },
              child: ListTile(
                leading: Icon(Icons.star_rate, size: 50.0, color: Colors.redAccent),
                title: Text("Penilaian Aplikasi", style: GoogleFonts.varelaRound(fontSize: 25.0, fontWeight: FontWeight.w600),),
                subtitle: Text("Beri kami penilaian", style: GoogleFonts.varelaRound(fontSize: 15.0, fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.keyboard_arrow_right, size: 50.0, color: kBlackColor,),
              ),
            ),
            Divider(color: kBlackColor),
            Divider(color: kBlackColor),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Logout()));
              },
              child: ListTile(
                leading: Icon(Icons.star_rate, size: 50.0, color: Colors.redAccent),
                title: Text("Log Out", style: GoogleFonts.varelaRound(fontSize: 25.0, fontWeight: FontWeight.w600),),
                subtitle: Text("Log Out akun anda", style: GoogleFonts.varelaRound(fontSize: 15.0, fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.keyboard_arrow_right, size: 50.0, color: kBlackColor,),
              ),
            ),
            Divider(color: kBlackColor),
          ],
        ),
      ),
    );
  }
}