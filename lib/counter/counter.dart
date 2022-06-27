// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:new_app/modules/constant/newapp/state.dart';
// import '../modules/constant/newapp/cupit.dart';
//
// class counterscrean extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return
//       BlocProvider(
//       create: (BuildContext context)=>newappCupit(),
//       child:BlocConsumer< newappCupit , newappstate>
//         (
//         listener:(context,state){} ,
//         builder:(context,state)
//         {
//           var cupit= newappCupit.get(context);
//           return Center(
//             child: Row(mainAxisAlignment: MainAxisAlignment.center,
//               children:
//               [
//                 TextButton(onPressed: ()
//                 {
//                   cupit.muins();
//                 },
//                     child: Text('muins',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
//
//                 Text('${cupit.counter}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
//
//                 TextButton(onPressed: ()
//
//                 {
//                   cupit.plus();
//                 },
//                     child: Text('plus',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
//               ],),
//           );
//         } ,
//       )
//
//     );
//   }
// }
//
//
