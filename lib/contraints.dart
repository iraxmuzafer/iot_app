import 'package:flutter/material.dart';

Gradient bg = const RadialGradient(
  center: Alignment(0, 0),
  stops: [
    0.10,
    0.90,
  ],
  radius: 1.0,
  colors: [
    Color.fromARGB(255, 65, 64, 64),
    Color.fromARGB(255, 17, 17, 17),
  ],
);

const TextStyle light_text = TextStyle(
    color: Color.fromARGB(155, 255, 255, 255),
    fontSize: 20,
    fontWeight: FontWeight.w500);

Image LogoImage = Image.asset("assets/images/logo.png");
