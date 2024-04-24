import 'package:flutter/material.dart';
import 'package:salad_prog/screens/add_to_cart_page.dart';
import 'package:salad_prog/screens/detail_page.dart';
import 'package:salad_prog/screens/faurite_page.dart';
import 'package:salad_prog/screens/home_page.dart';
import 'package:salad_prog/screens/invoice_generator.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: "pdfPage",
      routes: {
        '/': (context) => const HomePage(),
        'detailPage': (context) => const Detailpage(),
        'fauritePage': (context) => const FauritePage(),
        'cartPage': (context) => const CartPage(),
        'pdfPage': (context) => const PdfPage(),
      },
    ),
  );
}
