import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supermercado_app/screens/home/end.dart';
import 'package:supermercado_app/screens/home/home_screen.dart';
import 'package:supermercado_app/screens/home/homec.dart';
import 'package:supermercado_app/screens/home/homesf.dart';
import 'package:supermercado_app/screens/home/principal.dart';
import 'package:supermercado_app/screens/splash_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}
//principal
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supermercado App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
