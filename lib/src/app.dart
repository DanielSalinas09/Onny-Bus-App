import 'package:flutter/material.dart';

import 'package:onny/src/Pages/Home_Page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: HomePage(),
      ),
    );
  }
}
