import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:appfunction/utils/responsiveLayout.dart';
import 'package:appfunction/utils/sizes_helpers.dart';
import 'package:flutter/material.dart';
import 'package:appfunction/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isRepeatingAnimation = true;
    return Container(
      color: primaryLightColor,
      padding: const EdgeInsets.all(10),
      height: ResponsiveLayout.isSmallScreen(context) ? 350: 550,
      alignment: Alignment.center,
      width: size.width,
      child: Container(
        width: size.width,
        child: Stack(
          children: [
            if (!ResponsiveLayout.isSmallScreen(context))
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/background_top.png",
                  height: ResponsiveLayout.isSmallScreen(context) ? 350: 550,
                ),
              ),
            /*
            Positioned(
              top: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)),
                child: Image.asset(
                  "assets/images/background_top.png",
                  //color: primaryColor,
                  height: 550,
                ),
              ),
            ),*/
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                padding: EdgeInsets.all(displayWidth(context) <= 375 ? 15 : 30),
                color: primaryLightColor,
                height: ResponsiveLayout.isSmallScreen(context) ? 350: 550,
                /*decoration: BoxDecoration(
                  color: primaryLightColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                ),*/
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    InkWell(
                      onTap: () {
                        //print('tap');
                        isRepeatingAnimation = !isRepeatingAnimation;
                      },
                      child: TypewriterAnimatedTextKit(
                        speed: const Duration(milliseconds: 800),
                        pause: const Duration(milliseconds: 900),
                        isRepeatingAnimation: isRepeatingAnimation,
                        text: [
                          "Seja bem vindo(a)",
                        ],
                        textStyle: 
                        
                        TextStyle(
                            fontSize: 22.0,
                            fontFamily: "lato",
                            color: primaryTextColor),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SelectableText(
                      "AppFunction",
                      maxLines: 1,
                      style: GoogleFonts.lato(
                        fontSize: displayWidth(context) <= 520 ? 45 : 60,
                        color: primaryTextColor,
                      ),
                    ),
                    SelectableText(
                      rTitle,
                      style: GoogleFonts.lato(
                        fontSize: displayWidth(context) <= 520 ? 22 : 30,
                        color: primaryTextColor,
                      ),
                      //overflow: TextOverflow.fade,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
