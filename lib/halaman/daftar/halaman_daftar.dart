import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/bantuan/constants.dart';
import 'package:obatin_app/validasi/validasi_daftar.dart';
import 'package:obatin_app/widget/raised_button_widget.dart';
import 'package:obatin_app/widget/text_form_field_widget.dart';
import 'package:provider/provider.dart';

class HalamanDaftar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final signUpProv = Provider.of<ValidasiDaftar>(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kWhiteColor,
          ),
          onPressed: (){
            Get.back();
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: signUpProv.daftarFormKey,
            autovalidate: signUpProv.autoValidate,
            child: Column(
              children: [
                SizedBox(height: 40.0),
                Center(
                  child: Image(
                    image: AssetImage('images/logo2.png'),
                  ),
                ),
                SizedBox(height: 40.0),
                CustomTextFormField(
                  hintText: 'Nama Lengkap',
                  obscureText: false,
                  textInputType: TextInputType.text,
                  prefixIcon: Icon(Icons.person),
                  validator: signUpProv.validateNamaLengkap,
                  onChanged: (value){
                    signUpProv.onSavedNamaLengkap(value);
                  },
                ),

                SizedBox(height: 15.0),
                CustomTextFormField(
                  hintText: 'Email',
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                  prefixIcon: Icon(Icons.mail),
                  validator: signUpProv.validateEmailAddress,
                  onChanged: (value){
                    signUpProv.onSavedEmail(value);
                  },
                ),

                SizedBox(height: 15.0),
                CustomTextFormField(
                  hintText: 'Password',
                  obscureText: signUpProv.obscureText,
                  textInputType: TextInputType.visiblePassword,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(signUpProv.obscureText
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: (){
                      if(signUpProv.obscureText == false){
                        signUpProv.obscureText = true;
                      }
                      else{
                        signUpProv.obscureText = false;
                      }
                  },),
                  validator: signUpProv.validatePassword,
                  onChanged: (value){
                    signUpProv.onSavedPassword(value);
                  },
                ),

                SizedBox(height: 15.0),
                CustomTextFormField(
                  hintText: 'Konfirmasi Password',
                  obscureText: signUpProv.obscureText,
                  textInputType: TextInputType.visiblePassword,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(signUpProv.obscureText
                    ? Icons.visibility
                    : Icons.visibility_off),
                    onPressed: (){
                    if(signUpProv.obscureText == false){
                      signUpProv.obscureText = true;
                    }
                    else{
                      signUpProv.obscureText = false;
                    }
                  },),
                  validator: signUpProv.validateKonfirmasiPassword,
                  onChanged: (value){
                    signUpProv.onSavedKonfirmasiPassword(value);
                  },
                ),

                SizedBox(height: 20.0),
                CustomRaisedButton(
                  title: 'Daftar',
                  onPressed: (){
                    if(signUpProv.daftarFormKey.currentState.validate()){
                      signUpProv.daftarFormKey.currentState.save();
                      signUpProv.autoValidate = false;
                      print('Pengguna Berhasil Mendaftar');
                    }
                    else{
                      signUpProv.autoValidate = true;
                    }
                  },
                ),

                SizedBox(height: 20.0),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sudah Mempunyai Akun?', style: TextStyle(color: kWhiteColor, fontFamily: 'Poppins'),),
                      SizedBox(width: 10.0),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Text('Masuk', style: TextStyle(color: kBlueColor, fontFamily: 'Poppins'),),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          )
        ),
      )
    );
  }
}