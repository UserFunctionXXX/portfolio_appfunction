import 'package:appfunction/sections/topSection/components/popup_menu.dart';
import 'package:appfunction/utils/constants.dart';
import 'package:appfunction/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({
    Key key,
    this.scrollController,
  }) : super(key: key);

  final ScrollController scrollController;

  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  PopupMenu menu;
  List<MenuItem> menuItens;
  GlobalKey btnKey = GlobalKey();

  List<Widget> navItem() {
    bool isHover = true;
    return menuItens.map((text) {
      return Material(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(left: 18),
          child: InkWell(
            onTap: () {
              onClickMenu(text);
            },
            onHover: (value) {
              setState(() {
                isHover = value;
              });
            },
            child: !text.title.contains("Contato")
                ? Text(text.title,
                    style: TextStyle(
                      fontFamily: "Montserrat-Bold",
                      color: primaryTextColor,
                    ))
                : Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              colorGradientButtonRight,
                              colorGradientButtonLeft
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: colorBlurButton,
                              offset: Offset(0, 8),
                              blurRadius: 8)
                        ]),
                    child: Center(
                      child: Text(text.title,
                          style: TextStyle(
                              color: primaryTextColor,
                              fontSize: 18,
                              letterSpacing: 1,
                              fontFamily: "Montserrat-Bold")),
                    ),
                  ),
          ),
        ),
      );
    }).toList();
  }

  @override
  void initState() {
    super.initState();

    menuItens = [
      MenuItem(
        title: 'Sobre',
        textStyle: TextStyle(),
      ),
      MenuItem(
        title: 'Serviços Oferecidos',
        textStyle: TextStyle(),
      ),
      MenuItem(
        title: 'Últimos Trabalhos',
        textStyle: TextStyle(),
      ),
      MenuItem(
        title: 'Contato',
        textStyle: TextStyle(),
      ),
    ];

    menu = PopupMenu(
      backgroundColor: backgroundPopUpMenu,
      lineColor: primaryDarkColor,
      items: menuItens,
      onClickMenu: onClickMenu,
      onDismiss: onDismiss,
      maxColumn: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isHover = true;
    PopupMenu.context = context;
    return Container(
      color: primaryLightColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/images/appFunction_logo.png",
                  height: 150,
                ),
              ],
            ),
            if (!ResponsiveLayout.isSmallScreen(context))
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: navItem(),
              )
            else
              Material(
                color: Colors.transparent,
                child: InkWell(
                  key: btnKey,
                  onTap: () {
                    menu.show(widgetKey: btnKey);
                  },
                  onHover: (value) {
                    setState(() {
                      isHover = value;
                    });
                  },
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void stateChanged(bool isShow) {
    //print('menu is ${isShow ? 'showing' : 'closed'}');
  }

  void onClickMenu(MenuItemProvider item) {
    double position = 0;
    int seconds = 0;
    //print('Click menu -> ${item.menuTitle}');

    //print('maxScroll -> ${widget.scrollController.position.maxScrollExtent}');
    switch (item.menuTitle) {
      case 'Sobre':
        position = 300.0;
        seconds = 1;
        break; // The switch statement must be told to exit, or it will execute every case.
      case 'Serviços Oferecidos':
        position = 900.0;
        seconds = 2;
        break;
      case 'Últimos Trabalhos':
        position = 1800.0;
        seconds = 3;
        break;
      case 'Contato':
        position = 5800.0;
        seconds = 3;
        break;
      default:
        position = widget.scrollController.position.maxScrollExtent;
    }
    widget.scrollController.position.animateTo(
      position,
      duration: Duration(
        seconds: seconds,
      ),
      curve: Curves.fastOutSlowIn,
    );
  }

  void onDismiss() {
    //print('Menu is dismiss');
  }
}
