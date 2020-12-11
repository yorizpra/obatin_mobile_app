import 'package:flutter/material.dart';

var kPrimaryColor = Color(0xffff0000);
var kBlackColor = Color(0xff000000);
var kWhiteColor = Color(0xffffffff);
var kGreyColor = Color(0xff808080);
var kBlueColor = Color(0xff0000ff);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]");
const String kEmailNullError = "Mohon Masukkan Email Anda";
const String kInvalidEmailError = "Mohon Masukkan Email Dengan Benar";
const String kPassNullError = "Mohon Masukkan Password Anda";
const String kShortPassError = "Password Harus Terdiri Dari 8 Karakter";
const String kMatchPassError = "password Salah";

