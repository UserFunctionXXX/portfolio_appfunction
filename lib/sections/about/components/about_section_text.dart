import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Wrap(
      children: _listWidget(orientation, context),
    );
  }

  List<Widget> _listWidget(Orientation orientation, BuildContext context) {
    double sizeText = MediaQuery.of(context).size.width / 1.2;

    List<Widget> list = [
      orientation == Orientation.portrait
          ? SizedBox(
              height: 30,
            )
          : SizedBox(
              width: 30,
            ),
      Container(
        width: sizeText,
        child: SelectableText.rich(
          TextSpan(
            children: [
              TextSpan(
                text: rSobre1,
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w800
                ),
              ),
              TextSpan(
                text: rSobre2,
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
                ),
              ),
              TextSpan(
                text: rSobre3,
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.normal
                ),
              ),
             
            ],
          ),
        ),
      ),
      Container(
        width: sizeText,
        child: SelectableText.rich(
          TextSpan(
            children: [],
          ),
        ),
      ),
      Container(
        width: sizeText,
        child: SelectableText.rich(
          TextSpan(
            children: [],
          ),
        ),
      ),
      orientation == Orientation.portrait
          ? SizedBox(
              height: 30,
            )
          : SizedBox(
              width: 30,
            ),
    ];

    return list;
  }
}
