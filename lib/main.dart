import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obatin_app/halaman/splash/splash.dart';
import 'package:obatin_app/validasi/validasi_daftar.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/halaman/login/validasi_login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ValidasiLogin()),
        ChangeNotifierProvider(create: (context) => ValidasiDaftar()),
      ],
      child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Obatin',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
        home: Splash(),
      ),
    );
  }
}