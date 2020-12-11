import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/bantuan/constants.dart';
import 'package:obatin_app/halaman/login/halaman_login.dart';

class Splash extends StatefulWidget{
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>{
  startTime() async{
    return Timer(
      Duration(milliseconds: 3000), () {
        Get.to(HalamanLogin());
    },
    );
  }


  @override
  void initState(){
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Center(
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red,
            ),
            child: Image(
              image: AssetImage('images/logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}