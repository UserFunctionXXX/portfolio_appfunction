import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    this.title,
    this.subTitle,
    this.color,
  }) : super(key: key);

  final String title, subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.symmetric(vertical: rDefaultPadding),
      width: ScreenUtil.defaultSize.width,
      height: 100.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: rDefaultPadding.w),
            padding: EdgeInsets.only(bottom: 72.h),
            width: 8.w,
            height: 100.h,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                subTitle,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w200,
                ),
              ),
              SelectableText(
                title,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w900,fontSize: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
