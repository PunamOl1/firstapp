import 'package:firstapp/butext.dart';

import 'package:flutter/material.dart';

import 'buttons.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "stf",
      home: Punam(),
    );
  }
}
