import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:obatin_app/bantuan/lang.dart';

class ValidasiDaftar with ChangeNotifier{
  final daftarFormKey = GlobalKey<FormState>();

  String _namaLengkap;
  String _email;
  String _password;
  String _konfirmasiPassword;

  bool _autoValidate = false;
  bool _isLoading = false;
  bool _obscureText = true;

  String get namaLengkap => _namaLengkap;
  String get email => _email;
  String get password => _password;
  String get konfirmasiPassword => _konfirmasiPassword;
  bool get autoValidate => _autoValidate;
  bool get isLoading => _isLoading;
  bool get obscureText => _obscureText;

  set autoValidate(bool value){
    _autoValidate = value;
    notifyListeners();
  }

  set obscureText(bool value){
    _obscureText = value;
    notifyListeners();
  }

  void changedObscureText(){
    if(obscureText == true){
      _obscureText = false;
      notifyListeners();
    }
    else{
      _obscureText = true;
      notifyListeners();
    }
  }

  void onSavedNamaLengkap(String namaLengkap){
    _namaLengkap = namaLengkap;
    notifyListeners();
  }

  void onSavedEmail(String email){
    _email = email;
    notifyListeners();
  }

  void onSavedPassword(String password){
    _password = password;
    notifyListeners();
  }

  void onSavedKonfirmasiPassword(String konfirmasiPassword){
    _konfirmasiPassword = konfirmasiPassword;
    notifyListeners();
  }

  String validateNamaLengkap(String value){
    String pattern = kRegexNamaLengkap;
    RegExp regExp = RegExp(pattern);
    if(value.length == 0){
      return 'Masukkan Nama Anda';
    }
    else if(value.length == 2){
      return 'Format Salah';
    }
    else if(!regExp.hasMatch(value)){
      return 'Nama Hanya Menggunakan Karakter';
    }
    else{
      return null;
    }
  }

  String validateEmailAddress(String value){
    String pattern = kRegexEmailAddress;
    RegExp regExp = RegExp(pattern);
    if(value.length == 0){
      return 'Mohon Isi Email Anda Dengan Benar';
    }
    else if (!regExp.hasMatch(value)){
      return 'Email Salah';
    }
    else {
      return null;
    }
  }

  String validatePassword(String value){
    if(value.length == 0){
      return 'Masukkan Password Anda Dengan Benar';
    }
    else if (value.length < 8){
      return 'Password Harus Terdiri Dari 8 Karakter';
    }
    else {
      return null;
    }
  }

  String validateKonfirmasiPassword(String value){
    if(value.length == 0){
      return 'Masukkan Kembali Password Anda';
    }
    else if (value != _password){
      return 'Password Tidak Sesuai';
    }
    else {
      return null;
    }
  }

}