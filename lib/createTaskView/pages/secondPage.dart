// ignore_for_file: prefer_const_constructors, file_names, avoid_unnecessary_containers, deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moja_prva/createTaskView/widgets/add_task_field.dart';
import 'package:moja_prva/createTaskView/widgets/app_baaar.dart';
import 'package:moja_prva/services/example.dart';
import 'package:moja_prva/dataPage.dart';

class Second extends StatefulWidget {
  final Zadacina? zadak;
  const Second({Key? key, this.zadak}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSec(),
      body: Column(
        children: <Widget>[
          addTaskField(widget: widget),
          SizedBox(
            height: 20.0,
          ),
          Divider(
            thickness: 2,
            height: 20,
            indent: 120,
            color: Colors.black,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 120),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: widget.zadak == null
                      ? lista_zadacica.map((e) {
                          return Row(
                            children: [
                              Checkbox(
                                value: e.daLiJeCekirano,
                                onChanged: (value) {
                                  setState(() {
                                    e.daLiJeCekirano = !e.daLiJeCekirano;
                                  });
                                },
                              ),
                              Text(e.imeZadacica),
                            ],
                          );
                        }).toList()
                      : widget.zadak!.listaZadacica.map((e) {
                          return Row(
                            children: [
                              Checkbox(
                                value: e.daLiJeCekirano,
                                onChanged: (value) {
                                  setState(() {
                                    e.daLiJeCekirano = !e.daLiJeCekirano;
                                  });
                                },
                              ),
                              Text(e.imeZadacica),
                            ],
                          );
                        }).toList(),
                ),
              ),
            ),
          ),
          Container(
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
          )
        ],
      ),
    );
  }
}

