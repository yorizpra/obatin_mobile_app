import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/bantuan/constants.dart';
import 'package:obatin_app/halaman/halaman_daftar.dart';
import 'package:obatin_app/halaman/login/login_berhasil.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/halaman/lupa_password/lupa_password.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/widget/nav_bar_bot.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/halaman/login/validasi_login.dart';
import 'package:obatin_app/widget/raised_button_widget.dart';
import 'package:obatin_app/widget/text_form_field_widget.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

class HalamanLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final signInProv = Provider.of<ValidasiLogin>(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: signInProv.formKey,
            autovalidate: signInProv.autoValidate,
            child: Column(
              children: [
                SizedBox(height: 120.0),
                Center(
                  child: Container(
                    child: Image(
                      image: AssetImage('images/logo2.png'),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                CustomTextFormField(
                  hintText: 'Masukkan Email Anda',
                  obscureText: false,
                  prefixIcon: Icon(Icons.mail),
                  textInputType: TextInputType.emailAddress,
                  validator: signInProv.validateEmailAddress,
                  onChanged: (email){
                    signInProv.onSavedEmailAddress(email);
                  },
                ),
                SizedBox(height: 15.0),
                CustomTextFormField(
                  hintText: 'Masukkan Password Anda',
                  obscureText: signInProv.obscureText,
                  textInputType: TextInputType.visiblePassword,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                      icon: Icon(signInProv.obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        signInProv.changedObscureText();
                      },),
                  validator: signInProv.validatePassword,
                  onChanged: (password){
                    signInProv.validatePassword(password);
                  },
                ),

                SizedBox(height: 15.0),
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(LupaPassword());
                    },
                    child: Text('Lupa Password?', style: TextStyle(color: kBlueColor, fontFamily: 'Poppins'),
                    ),
                  ),
                ),

                SizedBox(height: 20.0),
                CustomRaisedButton(
                  title: 'Masuk',
                  onPressed: (){
                    if(signInProv.formKey.currentState.validate()){
                      signInProv.formKey.currentState.save();
                      signInProv.autoValidate = false;
                      Get.to(LoginSuccess(),);
                    }
                    else{
                      signInProv.autoValidate = true;
                    }
                  },
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Belum Mempunyai Akun?', style: TextStyle(color: kWhiteColor, fontFamily: 'Poppins'),),
                      SizedBox(width: 10.0),
                      GestureDetector(
                        onTap: () {
                          Get.to(HalamanDaftar());
                        },
                        child: Text('Daftar Sekarang', style: TextStyle(color: kBlueColor, fontFamily: 'Poppins'),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}