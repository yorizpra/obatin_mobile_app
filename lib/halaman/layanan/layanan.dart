import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/halaman/layanan/body.dart';

class Layanan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        leading: Icon(Icons.medical_services),
        backgroundColor: kPrimaryColor,
        title: Column(
          children: [
            Text('Layanan', style: GoogleFonts.varelaRound(fontSize: 20.0, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
      body: Body(),
    );
  }
}