import 'package:appfunction/appfunctionDAO/firebaseDAO.dart';
import 'package:flutter/material.dart';
import 'package:appfunction/components/section_title.dart';

import '../../utils/constants.dart';
import 'components/about_section_text.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            alignment: Alignment.topLeft,
            child: SectionTitle(
              title: "Sobre",
              subTitle: "",
              color: Color(0xFF4f5B62),
            ),
          ),
          SizedBox(height: rDefaultPadding),
          AboutSectionText(),
        ],
      ),
    );
  }

}
