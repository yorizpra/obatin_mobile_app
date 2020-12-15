import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/halaman/akun/body.dart';

class Akun extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        leading: Icon(Icons.account_circle_rounded),
        backgroundColor: kPrimaryColor,
        title: Column(
          children: [
            Text('Akun', style: GoogleFonts.varelaRound(fontSize: 20.0, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
      body: Body(),
    );
  }
}