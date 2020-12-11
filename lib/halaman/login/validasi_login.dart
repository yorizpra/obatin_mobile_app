import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:obatin_app/bantuan/lang.dart';

class ValidasiLogin with ChangeNotifier{
  final formKey = GlobalKey<FormState>();

  String _emailAddress;
  String _password;

  bool _autoValidate = false;
  bool _isLoading = false;
  bool _obscureText = true;

  String get emailAddress => _emailAddress;
  String get password => _password;
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

  void onSavedEmailAddress(String email){
    _emailAddress = email;
    notifyListeners();
  }

  void onSavedPassword(String password){
    _password = password;
    notifyListeners();
  }

  String validateEmailAddress(String value){
    String pattern = kRegexEmailAddress;
    RegExp regExp = RegExp(pattern);
    if(value.length == 0){
      return 'Mohon Masukkan Email Anda';
    }
    else if (!regExp.hasMatch(value)){
      return 'Mohon Masukkan Email Anda Dengan Benar';
    }
    else {
      return null;
    }
  }

  String validatePassword(String value){
    if(value.length == 0){
      return 'Mohon Masukkan Password Anda';
    }
    else if (value.length < 8){
      return 'Password Harus Terdiri Dari 8 Karakter';
    }
    else {
      return null;
    }
  }

}