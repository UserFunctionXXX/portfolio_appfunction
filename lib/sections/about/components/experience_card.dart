import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key key,
    this.numOfExp,
  }) : super(key: key);

  final String numOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: rDefaultPadding),
      padding: EdgeInsets.all(rDefaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 6,
              color: Colors.black,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SelectableText(
                  numOfExp,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    //foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 1..color = Color(0xFFDFA3FF).withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                SelectableText(
                  numOfExp,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                  ),
                )
              ],
            ),
            SizedBox(height: rDefaultPadding / 2),
            SelectableText(
              "Anos de experiência",
              style: TextStyle(
                  //color: Colors.white,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
