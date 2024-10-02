import 'package:flutter/material.dart';

class ColorCon {
  static const anaRenk = Colors.green;

  static const backGround = Color.fromRGBO(255, 255, 255, 1);

  static const dikkat = Color.fromRGBO(244, 67, 54, 1);
  static const takvim = Color.fromRGBO(0, 53, 122, 1);
  static const yemek = Color.fromRGBO(122, 120, 0, 1);
  static const sVardiya = Color.fromARGB(255, 230, 255, 230);
  static const sKidem = Color.fromARGB(255, 230, 230, 255);
  static const sGri1 = Color.fromARGB(255, 221, 221, 221);
  static const sGri2 = Color.fromARGB(255, 231, 231, 231);

  static const blackshadow = Color.fromRGBO(87, 87, 87, 1);
  static const chart = LinearGradient(colors: [
    Color.fromRGBO(33, 149, 243, 0.2),
    Color.fromRGBO(33, 149, 243, 0.5),
    Color.fromRGBO(33, 149, 243, 0.2)
  ]);

  static const backGradient = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 0, 0, 36),
        Color.fromARGB(255, 0, 0, 139),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}
