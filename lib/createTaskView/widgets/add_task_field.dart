// ignore_for_file: camel_case_types, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:moja_prva/createTaskView/pages/secondPage.dart';
import 'package:moja_prva/dataPage.dart';
import 'package:moja_prva/homeView/pages/home_dart.dart';

// ignore: camel_case_types
class addTaskField extends StatefulWidget {
  const addTaskField({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final Second widget;

  @override
  State<addTaskField> createState() => _addTaskFieldState();
}

class _addTaskFieldState extends State<addTaskField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60, left: 120),
      child: TextField(
        controller: taskController,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(Icons.add),
            color: Colors.black,
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home()),
                (Route<dynamic> route) => false,
              );
              if (widget.widget.zadak == null) {
                setState(() {
                  zadacinamain.add(Zadacina(
                      taskController.text, List.from(lista_zadacica)));
               
                });
              }
            },
          ),
          border: InputBorder.none,
          hintText: 'My task',
          hintStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(2.0),
          ),
        ),
      ),
    );
  }
}
