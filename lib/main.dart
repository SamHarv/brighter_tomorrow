// import 'package:brighter_tomorrow/constants.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:beamer/beamer.dart';

import '/routes.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      title: 'Brighter Tomorrow',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(
        //   seedColor: const Color.fromRGBO(108, 112, 88, 1),
        //   background: kColor,
        // ),
        // scaffoldBackgroundColor: kColor,
        useMaterial3: true,
      ),
    );
  }
}
