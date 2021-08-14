import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/constants.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [rDefaultShadow],
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/images/email.png",
              height: 80.h,
              width: 80.w,
            ),
            SizedBox(
              height: 80.h,
              child: VerticalDivider(),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    "Iniciando um novo projeto?",
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: rDefaultPadding / 2),
                  SelectableText(
                    "Entre em contato pelas redes sociais, será um prazer atende-lo(a)",
                     style: GoogleFonts.lato(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            /*DefaultButton(
              text: "Contrate-me",
              imageSrc: "assets/images/hand.png",
              press: () {},
            )*/
          ],
        ),
      ),
    );
  }
}
