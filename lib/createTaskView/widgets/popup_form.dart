// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moja_prva/dataPage.dart';
import 'package:moja_prva/services/example.dart';

class PopupForm extends StatefulWidget {
  const PopupForm({
    Key? key,
  }) : super(key: key);

  @override
  State<PopupForm> createState() => _PopupFormState();
}

class _PopupFormState extends State<PopupForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.bottomRight,
      child: RaisedButton(
        color:
            Colors.primaries[Random().nextInt(Colors.primaries.length)],
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  // title: Text("aaaaaaa"),
                  content: TextField(
                    decoration: InputDecoration(
                      hintText: 'Item name',
                      hintStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.black, width: 1.5),
                        borderRadius:
                            BorderRadius.all(Radius.circular(6)),
                      ),
                    ),
                    controller: popupController,
                  ),

                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          Example().kreiranjeZadacica(
                              context, popupController);
                       
                        });
                      },
                      color: Colors.primaries[
                          Random().nextInt(Colors.primaries.length)],
                      child: Text('Add'),
                      textColor: Colors.white,
                    )
                  ],
                );
              });
        },
      ),
    );
  }
}

