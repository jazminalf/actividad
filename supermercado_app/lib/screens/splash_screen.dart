import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supermercado_app/constants.dart';
import 'package:supermercado_app/screens/home/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashHandel();
  }

  splashHandel() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>  HomeScreens(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/fondo2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    'Fatima Jazmin Alfaro Perez',
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: size.width * 0.055),
                  ),
                ),
                Text(
                  '25-0963-2017',
                  style: GoogleFonts.poppins(
                      fontSize: size.width * 0.1,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = kGradientTextColor),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              child: Text(
                '¡Bienvenido!',
                style: GoogleFonts.poppins(
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.w600,
                  color: kTextColor//.withOpacity(.2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
