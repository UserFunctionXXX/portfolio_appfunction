import 'package:appfunction/components/section_title.dart';
import 'package:appfunction/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:appfunction/utils/constants.dart';
import 'package:appfunction/sections/contact/components/social_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class RodapeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          color: primaryLightColor,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/appFunction_logo.png",
                height: 150,
              ),
              Column(
                children: [
                  Container(
                    width: !ResponsiveLayout.isSmallScreen(context) ? 300 : 100,
                    child: Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.end,
                      spacing: 1,
                      runSpacing: 1,
                      children: [
                        SocialCard(
                          //color: Color(0xFFD9FFFC),
                          iconSrc: "assets/images/icon_youtube.png",
                          name: '',
                          press: () {},
                        ),
                        SocialCard(
                          //color: Color(0xFFD9FFFC),
                          iconSrc: "assets/images/icon_linkedin.png",
                          name: '',
                          press: () => launch(
                              'https://www.linkedin.com/in/renan-qsantos/'),
                        ),
                        SocialCard(
                          //color: Color(0xFFD9FFFC),
                          iconSrc: "assets/images/icon_facebook.png",
                          name: '',
                          press: () => launch(
                              'https://www.facebook.com/renan.gomes.923724'),
                        ),
                        SocialCard(
                          //color: Color(0xFFD9FFFC),
                          iconSrc: "assets/images/icon_instagram.png",
                          name: '',
                          press: () => launch(
                              'https://www.instagram.com/renan_qsantos/?hl=pt-br'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: primaryLightColor,
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SelectableText(
                  "© 2021 Copyright - appFunction",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: primaryTextColor,
                  ),
                )
              ]),
        ),
      ],
    );
  }
}
