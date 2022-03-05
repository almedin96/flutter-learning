// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';

class AppBaronja extends StatelessWidget with PreferredSizeWidget {
  const AppBaronja({
    Key? key,
  }) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return AppBar(
    backgroundColor: Colors.white,
     title: const Image(

     image: AssetImage("assets/images/Polygon 1.png"),
       
    ),
    );
  }
    Size get preferredSize => Size.fromHeight(kToolbarHeight);

}