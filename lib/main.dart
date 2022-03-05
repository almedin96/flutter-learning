// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:moja_prva/createTaskView/pages/secondPage.dart';
import 'package:moja_prva/homeView/pages/home_dart.dart';
void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  initialRoute: '/home',
  routes: {
    '/home': (context)=> Home(),
    '/second': (context)=> Second(),
  },
));