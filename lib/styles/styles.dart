import 'package:flutter/material.dart';

Color primaryColor = Color(0xFFCACED);
Color color1 = Color(0xFF964A8B);

Color color2 = Color(0xFF4E2C43);
Color color3 = Color(0xFF692E4E);
Color color4 = Color(0xFF433D76);
// Color color5 = Color(0xFF2E41D0);
// Color color6 = Color(0xFF3099EC);
// Color color7 = Color(0xFFA094D7);
// Color color8 = Color(0xFF9020F4);

List<BoxShadow> styleBoxShadow = [
  BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: -5,
      offset: Offset(-5, -5),
      blurRadius: 30),
  BoxShadow(
      color: Colors.blue[900].withOpacity(.2),
      spreadRadius: 2,
      offset: Offset(7, 7),
      blurRadius: 20),
];

TextStyle fontTextStyle() {
  return TextStyle(
      color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold);
}

TextStyle textStyleOne() {
  return TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
}

BoxDecoration containerDecoration() {
  return BoxDecoration(
      image: DecorationImage(
          image: AssetImage(
            'assets/image2.png',
          ),
          fit: BoxFit.cover));
}
