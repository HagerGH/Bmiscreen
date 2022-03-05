 //import 'package:calculator/BMiscreen.dart';
import 'package:calculator/BMiscreen.dart';
import 'package:calculator/Bmi_Result.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    ); }}
