import 'package:flutter/material.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/bantuan/constants.dart';

class CustomRaisedButton extends StatelessWidget{
  final Function onPressed;
  final String title;

  const CustomRaisedButton({Key key, this.onPressed, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.transparent,
          boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(.4),
                blurRadius: 5.0,
                offset: Offset(0, 5),
              ),
          ]),

        child: RaisedButton(
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)
          ),
          color: kPrimaryColor,

          child: Center(
            child: Text(title, style: TextStyle(color: kWhiteColor, fontFamily: 'Poppins'),),
          ),
        ),
      ),
    );
  }
}