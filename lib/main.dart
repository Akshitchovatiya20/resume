import 'package:flutter/material.dart';
import 'package:resume/First.dart';
import 'package:resume/Four.dart';
import 'package:resume/Home.dart';
import 'package:resume/MyApp.dart';
import 'package:resume/Resume2.dart';
import 'package:resume/Second.dart';
import 'package:resume/Third.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'nd',
      routes: {
        '/': (context) => home(),
        'my': (context) => myapp(),
        'st': (context) => first(),
        'nd': (context) => second(),
        'rd': (context) => third(),
        'fr': (context) => four(),
        'r2': (context) => resume2(),
      },
    ),
  );
}