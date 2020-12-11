import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/bantuan/constants.dart';

class CustomTextFormField extends StatelessWidget{
  final bool obscureText;
  final hintText;
  final TextInputType textInputType;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final Function(String) validator;
  final void Function(String) onChanged;

  const CustomTextFormField({
    Key key,
    this.hintText,
    this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputType,
    this.validator,
    this.onChanged
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kBlackColor,
      keyboardType: textInputType,
      style: TextStyle(color: kGreyColor, fontFamily: "Poppins"),
      autocorrect: false,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: kWhiteColor,
        hintText: hintText,
        hintStyle: TextStyle(color: kGreyColor, fontFamily: 'Poppins'),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: kWhiteColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: kWhiteColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: kWhiteColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: kWhiteColor,
          ),
        ),
      ),
      validator: validator,
      onChanged: onChanged,

    );

  }
}