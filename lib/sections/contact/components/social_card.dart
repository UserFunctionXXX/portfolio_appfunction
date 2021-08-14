import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({
    Key key,
    this.iconSrc,
    this.name,
    this.color,
    this.press,
  }) : super(key: key);

  final String iconSrc, name;
  final Color color;
  final Function press;

  @override
  _SocialCardState createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      child: FittedBox(
        child: InkWell(
          onTap: widget.press,
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(
              vertical: rDefaultPadding / 2,
              horizontal: rDefaultPadding * 1.5,
            ),
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) rDefaultCardShadow],
            ),
            child: Row(
              children: [
                Image.asset(
                  widget.iconSrc,
                  height: 35,
                  width: 35,
                ),
                /*SizedBox(width: kDefaultPadding),
                SelectableText(widget.name,style: TextStyle(fontSize: 24),),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
