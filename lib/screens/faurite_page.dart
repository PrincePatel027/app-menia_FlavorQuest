import 'package:flutter/material.dart';
import 'package:salad_prog/utils/utils_data.dart';

class FauritePage extends StatefulWidget {
  const FauritePage({super.key});

  @override
  State<FauritePage> createState() => _FauritePageState();
}

class _FauritePageState extends State<FauritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Text("${Data.likedItemsList}"),
      ),
    );
  }
}
