// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moja_prva/createTaskView/pages/secondPage.dart';
import 'package:moja_prva/createTaskView/widgets/add_task_field.dart';
import 'package:moja_prva/createTaskView/widgets/app_baaar.dart';
import 'package:moja_prva/createTaskView/widgets/popup_form.dart';
import 'package:moja_prva/homeView/pages/home_dart.dart';
import 'package:moja_prva/homeView/widgets/bar_app.dart';
import 'package:moja_prva/homeView/widgets/bottom_baric.dart';

 void main() {
 testWidgets('Homepage, element exist testing', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const Home(),
        
        ),);

     var barr = find.byType(AppBaronja);
 expect(barr, findsOneWidget);

    var bottomBar = find.byType(BottomBaric);
 expect(bottomBar, findsOneWidget);

//     var widgetAddTask = find.byType(adtaskbutton);
//  expect(widgetAddTask, findsOneWidget);   bilooo

//    var lista = find.byType(ListaZadataka);
//  expect(lista, findsOneWidget);
//buttonAddTaskTest
     var buttonAddTask = find.byType(IconButton);
      expect(buttonAddTask, findsWidgets);
       await tester.tap(buttonAddTask);
       await tester.pump();

  });

  testWidgets('SecondPage, element exist testing', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const Second(),
        
        ),);

     var barr = find.byType(AppBarSec);
 expect(barr, findsOneWidget);

   var divider = find.byType(Divider);
 expect(divider, findsOneWidget);

    var taskFieldForm = find.byType(addTaskField);
 expect(taskFieldForm, findsOneWidget);

//     var listaSubtasks = find.byType(ListaSubtasks);
//  expect(listaSubtasks, findsOneWidget);       biloo

//    var popupForm = find.byType(PopupForm);
//  expect(popupForm, findsOneWidget);

  });
  testWidgets('Task input testing', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const Second(),
      
        ),);
//taskinputtestiranje
      var textField = find.byType(TextField);
      expect(textField, findsOneWidget);
   await tester.enterText(textField, 'Task1');
      expect(find.text('Task1'), findsOneWidget);
         var button = find.byType(IconButton);
      expect(button, findsWidgets);
       await tester.tap(button.first);
       await tester.pump();

  });

    testWidgets('Popup testing', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
           home: const PopupForm(),
      
        ),);


//popuptestiranje
        // ignore: deprecated_member_use
        var activatePopup = find.byType(RaisedButton);
      expect(activatePopup, findsOneWidget);
       await tester.tap(activatePopup.first);
       await tester.pump();
         var textFieldPopup = find.byType(TextField);
      expect(textFieldPopup, findsOneWidget);
   await tester.enterText(textFieldPopup, 'sub1');
      expect(find.text('sub1'), findsOneWidget);
         // ignore: deprecated_member_use
         var buttonAddSubtask = find.byType(FlatButton);
      expect(buttonAddSubtask, findsWidgets);
       await tester.tap(buttonAddSubtask);
       await tester.pump();
   });




 }


