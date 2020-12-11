import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/bantuan/constants.dart';
import 'package:obatin_app/widget/raised_button_widget.dart';
import 'package:obatin_app/widget/text_form_field_widget.dart';

class LupaPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
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
        child: Form(
          child: Column(
          children: [
            Flexible(
              flex: 1,
              child: SvgPicture.asset(
                  'images/icons/security.svg',
                width: 200.0,
              ),
            ),

            SizedBox(height: 25.0),
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(text: 'Reset Password\n\n', style: theme.textTheme.headline3),
                            TextSpan(text: 'Mohon Masukkan Email Anda. Anda Akan Menerima Link Untuk Membuat Password Baru Via Email',
                                style: theme.textTheme.subtitle1)
                          ]
                        ),
                      ),

                      SizedBox(height: 15.0),
                      CustomTextFormField(
                        hintText: 'Email',
                        obscureText: false,
                        textInputType: TextInputType.emailAddress,
                          prefixIcon: Icon(Icons.mail)
                        ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 15.0),
              CustomRaisedButton(
                title: 'Kirim',
                  onPressed: (){
                    _showResetPasswordDialog(context);
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  _showResetPasswordDialog(BuildContext context) {
    final theme = Theme.of(context);
    return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          content: Container(
            height: 250.0,
            child: Column(
              children: [
                SvgPicture.asset(
                  'images/icons/checklist.svg',
                  width: 65.0,
                ),
                SizedBox(height: 10.0),
                Text('Berhasil', style: theme.textTheme.headline2),
                SizedBox(height: 10.0),
                Text('Kami Telah Mengirim Password Baru Ke Email Anda', style: theme.textTheme.subtitle2),
                SizedBox(height: 15.0),
                CustomRaisedButton(
                  title: 'Lanjut Untuk Masuk',
                  onPressed: (){
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
