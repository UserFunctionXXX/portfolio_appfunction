import 'package:flutter/material.dart';
import 'package:appfunction/components/section_title.dart';
import 'package:appfunction/utils/constants.dart';
import 'package:appfunction/models/Feedback.dart';
import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      //constraints: BoxConstraints(maxWidth: 1110.w),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            alignment: Alignment.topLeft,
            child: SectionTitle(
              title: "Agradecimentos Recebidos",
              subTitle: "",
              color: Color(0xFF00B1FF),
            ),
          ),
          SizedBox(height: rDefaultPadding),
          Wrap(
            spacing: 20,
            children: List.generate(
              feedbacks.length,
              (index) => FeedbackCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}
