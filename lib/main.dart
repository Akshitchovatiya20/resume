import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume/screen/home/view/First.dart';
import 'package:resume/screen/home/view/Four.dart';
import 'package:resume/screen/home/view/Home.dart';
import 'package:resume/screen/home/view/MyApp.dart';
import 'package:resume/screen/home/view/Resume2.dart';
import 'package:resume/screen/home/view/Resume_I.dart';
import 'package:resume/screen/home/view/Second.dart';
import 'package:resume/screen/home/view/Third.dart';

bool them = true;
StreamController<bool> data = StreamController();

void main()
{

  ThemeData _dark = ThemeData(
    primarySwatch: Colors.green,
    brightness: Brightness.dark
  );

  ThemeData _light = ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.light
  );

  runApp(
    StreamBuilder(
      initialData: true,
      stream: data.stream,
      builder: (context , snapshot){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: snapshot.data == true? _light : _dark,
          initialRoute: 'nd',
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
        );
      },
    ),
  );
}