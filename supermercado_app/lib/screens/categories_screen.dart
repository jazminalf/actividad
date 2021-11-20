import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supermercado_app/constants.dart';
import 'package:supermercado_app/models/categotires_model.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

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
            'Categorias Supermercado',
            style: GoogleFonts.poppins(
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
              color: kTitleColor.withOpacity(0.5),
              fontSize: size.width * 0.05,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.08,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
                children: List.generate(
              categories.length,
              (index) => Container(
                margin: const EdgeInsets.only(top: 10,bottom: 10),
                alignment: Alignment.center,
                width: double.infinity,
                height: size.height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:  DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(categories[index].image),
                  ),
                ),
                child: Text(
                  categories[index].title,
                  style: GoogleFonts.poppins(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    color: kTitleColor,
                    fontSize: size.width * 0.07,
                  ),
                ),
              ),
            )),
          ),
        ),
      ),
    );
  }
}
