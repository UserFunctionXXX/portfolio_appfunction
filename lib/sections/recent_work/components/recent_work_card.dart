import 'package:appfunction/utils/constants.dart';
import 'package:appfunction/utils/sizes_helpers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:appfunction/models/RecentWork.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    Key key,
    this.index,
    this.press,
    this.work,
  }) : super(key: key);

  final int index;
  final Function press;
  final RecentWork work;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Card(
        elevation: rElevation,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: 250,
          width:
              displayWidth(context) < 520 ? displayWidth(context) * 0.9 : 520,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [rDefaultCardShadow],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Image.asset(recentWorks[widget.index].image),
              Container(
                padding:
                    EdgeInsets.all(displayWidth(context) < 520 ? 10 : 10),
                width: displayWidth(context) < 520
                    ? displayWidth(context) / 4.5
                    : 150,
                height: 250,
                child: Center(
                  child: Image.asset(
                    widget.work.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                width: displayWidth(context) < 520
                    ? displayWidth(context) / 1.6
                    : 348,
                height: 250,
                decoration: BoxDecoration(
                  color: primaryLightColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2.0, color: primaryDarkColor),
                  boxShadow: [if (isHover) rDefaultCardShadow],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectableText(
                      widget.work.category.toUpperCase(),
                      style: TextStyle(color: primaryTextColor, fontSize: 18),
                    ),
                    SizedBox(height: rDefaultPadding / 2),
                    SelectableText(
                      widget.work.title,
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          height: 1.5, color: primaryTextColor, fontSize: 16),
                    ),
                    SizedBox(height: rDefaultPadding),
                    /*SelectableText(
                      "View Details",
                      style: TextStyle(decoration: TextDecoration.underline),
                    )*/
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
