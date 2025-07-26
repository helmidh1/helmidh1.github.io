import 'package:flutter/material.dart';

class CustomColors {
  final int alpha;

  CustomColors({this.alpha = 0});

  Color getFlutter_1() {
    return Color.fromARGB(alpha, 64, 196, 255);
  }

  Color getFlutter_2() {
    return Color.fromARGB(alpha, 3, 169, 244);
  }

  Color getFlutter_3() {
    return Color.fromARGB(alpha, 1, 87, 155);
  }

  Color getRenpy_1() {
    return Color.fromARGB(alpha, 248, 124, 125);
  }

  Color getRenpy_2() {
    return Color.fromARGB(alpha, 251, 239, 227);
  }

  Color getRenpy_3() {
    return Color.fromARGB(alpha, 252, 229, 88);
  }
}
