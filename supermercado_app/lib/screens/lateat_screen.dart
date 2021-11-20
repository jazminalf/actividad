import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supermercado_app/constants.dart';
import 'package:supermercado_app/models/wallpaper_model.dart';
import 'package:supermercado_app/screens/deatils/details_screen.dart';

class LateatScreen extends StatelessWidget {
  const LateatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBckgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kBckgroundColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Galeria - Recientes',
            style: GoogleFonts.poppins(
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
              color: kTitleColor.withOpacity(0.5),
              fontSize: size.width * 0.05,
            ),
          ),
        ),
        body: GridView.builder(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05,
            vertical: size.height * 0.02,
          ),
          physics: const BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 35,
            crossAxisSpacing: size.width * 0.15,
            childAspectRatio: .52,
          ),
          itemCount: wallpaper.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailScreens(wallpaper: wallpaper[index]),
                  ),
                );
              },
              child: Hero(
                tag: wallpaper[index].id,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(wallpaper[index].image),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
