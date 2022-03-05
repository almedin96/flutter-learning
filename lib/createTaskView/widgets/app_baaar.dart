// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:moja_prva/homeView/pages/home_dart.dart';

class AppBarSec extends StatelessWidget  with PreferredSizeWidget {
  const AppBarSec({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
       
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
         title: Image(
     image: AssetImage("assets/images/Polygon 1.png"),
       ),
        actions: <Widget>[         
          IconButton(
    color: Colors.black,
    icon: Icon(Icons.close), 
    onPressed:(){

Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => Home()),
  (Route<dynamic> route) => false,

);
    },
          ),
          ],
          );
  }
     Size get preferredSize => Size.fromHeight(kToolbarHeight);
}