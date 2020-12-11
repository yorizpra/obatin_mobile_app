import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQuerydata;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQuerydata = MediaQuery.of(context);
    screenWidth = _mediaQuerydata.size.width;
    screenHeight = _mediaQuerydata.size.height;
    orientation = _mediaQuerydata.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenheight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenheight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}