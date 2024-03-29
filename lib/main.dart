import 'package:flutter/material.dart';
import 'package:salad_prog/screens/detail_page.dart';
import 'package:salad_prog/screens/faurite_page.dart';
import 'package:salad_prog/screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      routes: {
        '/': (context) => HomePage(),
        'detailPage': (context) => Detailpage(),
        'fauritePage': (context) => FauritePage(),
      },
    ),
  );
}
