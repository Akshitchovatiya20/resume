import 'package:flutter/material.dart';
import 'package:resume/screen/home/view/First.dart';
import 'package:resume/screen/home/view/Four.dart';
import 'package:resume/screen/home/view/Home.dart';
import 'package:resume/screen/home/view/MyApp.dart';
import 'package:resume/screen/home/view/Resume2.dart';
import 'package:resume/screen/home/view/Resume_I.dart';
import 'package:resume/screen/home/view/Second.dart';
import 'package:resume/screen/home/view/Third.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 50,color: Colors.black),
          headline2: TextStyle(fontSize: 20,color: Colors.black),
        )
      ),
      initialRoute: 'my',
      routes: {
        '/': (context) => home(),
        'my': (context) => myapp(),
        'st': (context) => first(),
        'nd': (context) => second(),
        'rd': (context) => third(),
        'fr': (context) => four(),
        'r2': (context) => resume2(),
        'r_i': (context) => resume_i(),
      },
    ),
  );
}