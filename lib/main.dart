import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appfunction/utils/constants.dart';
import 'package:appfunction/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AppFunction());
}

class AppFunction extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        return LayoutBuilder(builder: (context, constraints) {
          ScreenUtil.init(
            constraints,
            designSize: Size(1536, 754),
            allowFontScaling: false,
          );
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: rTitle,
            theme: ThemeData(
              inputDecorationTheme: rDefaultInputDecorationTheme,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: HomeScreen(),
          );
        });
      },
    );
  }
}
