import 'package:flutter/material.dart';
import 'package:sipal/src/1/homepage.dart';
import 'package:sipal/src/1/login/login.dart';
import 'package:sipal/src/include/include.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => AppView(),
      '/login': (context) => login(),
      '/homepage': (context) => HomePageWidget(),
      '/include': (context) => include(),
    });
  }
}
