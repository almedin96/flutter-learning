
// import 'package:flutter/material.dart';
// import 'package:moja_prva/dataPage.dart';

// class ListaSubtasks extends StatefulWidget {
//   const ListaSubtasks({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<ListaSubtasks> createState() => _ListaSubtasksState();
// }

// class _ListaSubtasksState extends State<ListaSubtasks> {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         padding: const EdgeInsets.only(left: 120),   
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(children: 
          
//             lista_zadacica.map((e) {
//               return Row(
//                 children: [
//                  Checkbox(value: e.daLiJeCekirano,
//                   onChanged: (value){
//                     setState(() {
//                       e.daLiJeCekirano =!e.daLiJeCekirano;
//                     });
//                   },
//                   ),
//                   Text(e.imeZadacica),
//                 ],
//               );
//             }).toList(),
//           ),
//         ),),
//     );
//   }
// }