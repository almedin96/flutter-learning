
// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, unused_import


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:moja_prva/createTaskView/pages/secondPage.dart';
import 'package:moja_prva/homeView/widgets/add_task_button.dart';
import 'package:moja_prva/homeView/widgets/bar_app.dart';
import 'package:moja_prva/homeView/widgets/bottom_baric.dart';
import 'package:moja_prva/homeView/widgets/task_form.dart';
import 'package:moja_prva/dataPage.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
         bottomNavigationBar: BottomBaric(),
         appBar: AppBaronja(),


  body: Column(
    children: <Widget>[
      

            TaskFormTitle(),

            SizedBox(height:41),

             Container(
                             
    decoration: BoxDecoration(
    border: Border.all(color: Colors.black)
  ),
  height: 40,
  width: 40,

    child: IconButton(
                
                onPressed: (){
                 
                           taskController.clear();
                            lista_zadacica.clear();
                         


    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Second()),
    );
  },
                icon:  Icon(
                    Icons.add,
                  ), 

               ),
              
              
                           ),


            // ignore_for_file: prefer_const_constructors



  Expanded(
    
      child: SingleChildScrollView(
    
        scrollDirection: Axis.horizontal,
    
      
    
     
    
          child: Row(children: zadacinamain.map((e) {
    
         return GestureDetector(
    
            onTap: (){
    taskController.text = e.imeZadacine;
                Navigator.push(
    
          context,
    
          MaterialPageRoute(builder: (context) => Second(zadak: e,)));
    
              },
    
           child: Row(
    
        
    
             children: [
    
               SizedBox(width: 20,),
    
               Container(
                 
                  decoration: BoxDecoration(
                 
                    
                 
                     color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                 
                     border: Border.all(color: Colors.blueAccent),
                 
                       borderRadius: BorderRadius.all(Radius.circular(20))
                 
                   ),
                 
                     
                 
                
                 
                
                 
                 height: 200,
                 
                 width: 150,
                 
                      
                 
                  child: Column(
                 
                    children: [
                 
                      Text (e.imeZadacine,
                 
                      style: TextStyle(fontSize: 22),),
                 
                      Expanded(
                 
                        child: SingleChildScrollView(
                 
                            scrollDirection: Axis.vertical,
                             
                 
                          child: Column(
                            
                            children: e.listaZadacica.map((f) {
                            
                               return Container(
                                                         
                                  padding: EdgeInsets.only(left: 20),
                                                         
                                 child: Row(
                                                           
                                                            
                                                           
                                   children: [

                                                           
                                     Text(f.imeZadacica,
                                                           
                                      overflow: TextOverflow.ellipsis,
                                                           
                                     style: TextStyle(fontSize: 20),
                                                           
                                     ),
                                                           
                                     
                                                           
                                     
                                                           
                                   
                                                           
                                    ] ),
                                                         
                               );
                            
                            }).toList()
                            
                          ),
                 
                        ),
                 
                      ),
                 
                    ],
                 
                  ),
                 
               ),
    
             ],
    
           ),
    
          
    
         );
    
         
    
        }).toList()
    
        
    
        ),
    
      )
    
    
       
    
        
    
        
    
      
    
       
    
      
  


  )


    ],
  ),



    );
    
  }
}

