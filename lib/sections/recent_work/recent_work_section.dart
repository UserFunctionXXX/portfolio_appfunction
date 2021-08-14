import 'package:appfunction/appfunctionDAO/firebaseDAO.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:appfunction/components/hireme_card.dart';
import 'package:appfunction/components/section_title.dart';
import 'package:appfunction/utils/constants.dart';
import 'package:appfunction/models/RecentWork.dart';

import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirestoreBD().getWorks(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: Container(height: 256),
          );
        } else {
          var works = snapshot.data.docs.map((doc) {
            var work = RecentWork(
              title: doc.get("titulo"),
              image: doc.get("image"),
              color: Colors.white,
              category: doc.get("categoria"),
            );

            return work;
          }).toList();
          return Container(
            margin: EdgeInsets.only(top: rDefaultPadding * 6),
            width: double.infinity,
            // just for demo
            // height: 600,
            decoration: BoxDecoration(),
            child: Column(
              children: [
                Transform.translate(
                  offset: Offset(0, -80),
                  child: HireMeCard(),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  alignment: Alignment.topLeft,
                  child: SectionTitle(
                    title: "Últimos Trabalhos",
                    subTitle: "",
                    color: Color(0xFFFFB100),
                  ),
                ),
                SizedBox(height: rDefaultPadding * 1.5),
                Container(
                  alignment: Alignment.center,
                  width: 1110,
                  child: Wrap(
                    spacing: rDefaultPadding,
                    runSpacing: rDefaultPadding * 2,
                    children: List.generate(
                      works.length,
                      (index) => RecentWorkCard(
                          index: index, press: () {}, work: works[index]),
                    ),
                  ),
                ),
                SizedBox(height: rDefaultPadding * 5),
              ],
            ),
          );
        }
      },
    );
  }
}
