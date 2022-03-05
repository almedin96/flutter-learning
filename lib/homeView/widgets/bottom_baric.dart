

import 'package:flutter/material.dart';

class BottomBaric extends StatelessWidget {
  const BottomBaric({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(

        icon: Icon(Icons.home,
        color: Colors.grey,),
        label: 'Home',
    
        
        
      ),
      BottomNavigationBarItem(
        
        icon: Icon(Icons.task),
        label: 'Add task',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.checklist),
        label: 'Add checklist item',
        
      ),
    ],
  );
  }
}