import 'package:flutter/material.dart';

const defaultPadding = 20.0;
const cartBarHeight = 100.0;
const headerHeight = 85.0;

const bgColor = Color(0xFFF6F5F2);
const primaryColor = Color(0xFF40A944);

const panelTransition = Duration(milliseconds: 500);

Color kBckgroundColor = const Color(0xff202020);
Color kTextColor = const Color(0xffB0FFA3);
Color kTitleColor = const Color(0xffffffff);
Color kTitleColorti = const Color(0xff997200);
Shader? kGradientTextColor = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xff8AFF80),
    Color(0xffCFFF81),
  ],
).createShader(
  const Rect.fromLTRB(0, 20, 0, 20),
);