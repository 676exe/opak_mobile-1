import 'package:flutter/material.dart';

class BoxDecorCon {
  static BoxDecoration siyahGolge([Color? color]) {
    return BoxDecoration(
      color: color ?? Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 0,
          blurRadius: 5,
        ),
      ],
    );
  }

  static BoxDecoration renkliGolgeSag(Color color, [Color? background]) {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: background ?? Colors.white,
      boxShadow: [
        BoxShadow(
          color: color,
          spreadRadius: -7,
          blurRadius: 0,
          offset: const Offset(10, 10),
        ),
      ],
    );
  }

  static BoxDecoration renkliGolgeSol(Color color) {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: color,
          spreadRadius: -7,
          blurRadius: 0,
          offset: const Offset(-10, 10),
        ),
      ],
    );
  }

  static renkliGolgeOrta(Color color) {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: color,
          spreadRadius: -7,
          blurRadius: 0,
          offset: const Offset(0, 10),
        ),
      ],
    );
  }
}
