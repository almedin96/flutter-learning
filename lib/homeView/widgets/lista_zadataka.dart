// // ignore_for_file: prefer_const_constructors

// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:moja_prva/createTaskView/pages/secondPage.dart';
// import 'package:moja_prva/utils/dataPage.dart';


// class ListaZadataka extends StatelessWidget {
//   const ListaZadataka({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return     Expanded(
    
//       child: SingleChildScrollView(
    
//         scrollDirection: Axis.horizontal,
    
      
    
     
    
//           child: Row(children: zadacinamain.map((e) {
    
//          return GestureDetector(
    
//             onTap: (){
    
//                 Navigator.push(
    
//           context,
    
//           MaterialPageRoute(builder: (context) => Second(zadak: e,)));
    
//               },
    
//            child: Row(
    
        
    
//              children: [
    
//                SizedBox(width: 20,),
    
//                Container(
                 
//                   decoration: BoxDecoration(
                 
                    
                 
//                      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                 
//                      border: Border.all(color: Colors.blueAccent),
                 
//                        borderRadius: BorderRadius.all(Radius.circular(20))
                 
//                    ),
                 
                     
                 
                
                 
                
                 
//                  height: 200,
                 
//                  width: 150,
                 
                      
                 
//                   child: Column(
                 
//                     children: [
                 
//                       Text (e.imeZadacine,
                 
//                       style: TextStyle(fontSize: 22),),
                 
//                       Expanded(
                 
//                         child: SingleChildScrollView(
                 
//                             scrollDirection: Axis.vertical,
                             
                 
//                           child: Column(
                            
//                             children: e.listaZadacica.map((f) {
                            
//                                return Container(
                                                         
//                                   padding: EdgeInsets.only(left: 20),
                                                         
//                                  child: Row(
                                                           
                                                            
                                                           
//                                    children: [

                                                           
//                                      Text(f.imeZadacica,
                                                           
//                                       overflow: TextOverflow.ellipsis,
                                                           
//                                      style: TextStyle(fontSize: 20),
                                                           
//                                      ),
                                                           
                                     
                                                           
                                     
                                                           
                                   
                                                           
//                                     ] ),
                                                         
//                                );
                            
//                             }).toList()
                            
//                           ),
                 
//                         ),
                 
//                       ),
                 
//                     ],
                 
//                   ),
                 
//                ),
    
//              ],
    
//            ),
    
          
    
//          );
    
         
    
//         }).toList()
    
        
    
//         ),
    
    
    
       
    
        
    
        
    
//       ),
    
       
    
//       );
//   }
// }

