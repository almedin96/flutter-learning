// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TaskFormTitle extends StatelessWidget {
  const TaskFormTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 53, 0, 0,),
      child: Row(
                       
    children: <Widget>[
        Expanded(
            child: Divider(
              endIndent: 40,
              color: Colors.black,
            ),
        ),    
         Text("Tasks",
         style: TextStyle(
      // ignore: prefer_const_constructors
           fontSize: 35,
           fontWeight: FontWeight.bold)),
      Text("List",
      style: TextStyle(
        fontSize: 35,

      ),),          

        Expanded(
            child: Divider(
              indent: 40,
              color: Colors.black,
            )
        ),
          ],
          ),
    );
  }
}



