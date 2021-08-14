import 'package:appfunction/sections/service/service_section.dart';
import 'package:appfunction/sections/topSection/components/menu.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:appfunction/utils/constants.dart';
import 'package:appfunction/sections/about/about_section.dart';
import 'package:appfunction/sections/recent_work/recent_work_section.dart';
import 'package:appfunction/sections/rodape/rodape.dart';
import 'package:appfunction/sections/topSection/top_section.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    var listWidget = _homeScreenWidgets();
    return Scaffold(
      //backgroundColor: Colors.black,
      /*decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),*/
      body: Scrollbar(
        controller: _controller,
        isAlwaysShown: true,
        child: Container(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            controller: _controller,
            itemBuilder: (context, i) {
              return listWidget[i];
            },
            itemCount: listWidget.length,
          ),
          /*child: ListView(
            semanticChildCount: 9,
            scrollDirection: Axis.vertical,
            controller: _controller,
            children: _homeScreenWidgets(),
          ),*/
        ),
      ),
    );
  }

  List<Widget> _homeScreenWidgets() {
    List<Widget> widgets = [
      MenuBar(scrollController: _controller),
      TopSection(),
      SizedBox(height: 10),
      //Menu(),
      //NavigationBarTabletDesktop(),
      //SizedBox(height: 40),
      AboutSection(),
      SizedBox(height: 20),
      ServiceSection(),
      SizedBox(height: 20),
      RecentWorkSection(),
      //SizedBox(height: 20),
      //FeedbackSection(),
      //SizedBox(height: 40),
      //ContactSection(),
      //SizedBox(height: 30),
      RodapeSection(),
      //FirestoreSection(), //teste
      // This SizeBox just for demo
      // SizedBox(
      //   height: 500,
      // )
    ];

    return widgets;
  }
}
