import 'package:flutter/material.dart';

const rTextColor = Color(0xFF707070);
const rTextLightColor = Color(0xFF555555);

const primaryColor = Color(0xFF263238);
const primaryLightColor = Color(0xFF4f5B62);
const primaryDarkColor = Color(0xFF000A12);
const primaryTextColor = Color(0xFFFFFFFF);
const rDefaultPadding = 20.0;
const rElevation = 15.0;
const colorGradientButtonRight = Color(0xFF314755);
const colorGradientButtonLeft = Color(0xFF26a0da);
const colorBlurButton = primaryLightColor;
const backgroundPopUpMenu = Color(0xFFFFFFFF);

final rDefaultShadowMenu = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.15),
);

final rDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: primaryDarkColor.withOpacity(0.15),
);

final rDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
final rDefaultInputDecorationTheme = InputDecorationTheme(
  border: rDefaultOutlineInputBorder,
  enabledBorder: rDefaultOutlineInputBorder,
  focusedBorder: rDefaultOutlineInputBorder,
);

final rDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);

final rSobre1 =
    "A appFunction é uma empresa especializada em criação de soluções mobile e web.";
final rSobre2 =
    "\n\nNossa missão é agregar valor ao seu projeto, desde a sua fase inicial.\nPara isso, utilizamos metodologias ágeis para conduzir todo o projeto. Trabalhamos também com MVP e criação de mockups do seu App e/ou Site, desta forma, garantimos excelência na entrega do produto final.";
final rSobre3 =
    "\n\nVenha para appFunction...Iremos trabalhar em conjunto com você e fazer seu projeto virar realidade a um preço justo.";
final rTitle = "Soluções Mobile | Web";
