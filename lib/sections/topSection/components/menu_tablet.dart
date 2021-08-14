import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        //height: 80.h,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        //color: Colors.white,
        child: SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          child: Container(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                NavBarLogo(),
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    NavBarItem('Serviços'),
                    SizedBox(
                      width: 40.w,
                    ),
                    NavBarItem('Trabalhos Recentes'),
                    SizedBox(
                      width: 40.w,
                    ),
                    NavBarItem('Feedback'),
                    SizedBox(
                      width: 40.w,
                    ),
                    NavBarItem('Contato'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem(this.title);
  @override
  Widget build(BuildContext context) {
    return SelectableText(
      title,
      style: TextStyle(fontSize: 18, color: Colors.black),
    );
  }
}

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150.w,
      //child: Image.asset('assets/logo.png'),
    );
  }
}
