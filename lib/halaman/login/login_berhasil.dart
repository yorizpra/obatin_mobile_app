import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/widget/nav_bar_bot.dart';
import 'package:obatin_app/widget/raised_button_widget.dart';

class LoginSuccess extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 80),
              Image.asset(
                  'images/icons/checked.png',
                  width: 250,
              ),
              SizedBox(height: 80),
              Text(
                "Login Berhasil",
                style: GoogleFonts.varelaRound(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: kWhiteColor,
                ),
              ),
              SizedBox(height: 20.0),
              CustomRaisedButton(
                title: "Halaman Utama",
                onPressed: (){
                  Get.to(NavBar());
                },
                ),
            ],
          ),
        ),
      ),
    );
  }
}