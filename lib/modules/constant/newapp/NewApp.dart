import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/model/cupit.dart';
import 'package:new_app/model/state.dart';

class newapp extends StatefulWidget {
  @override
  _newappState createState() => _newappState();
}

class _newappState extends State<newapp> {

  List<String>namescrean=
  [
    "buisness",
    "sports",
    "science",
    "setting",
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>newappCupit()..getBusiness(),
      child: BlocConsumer< newappCupit , newappstate>(
         listener:(context,state)
        {
        },
          builder: (context,state){
            var cupit =newappCupit.get(context);
            return Scaffold(
            body:cupit.screan[cupit.currentindex] ,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cupit.currentindex,
              onTap: (index)
              {
                cupit.change(index);
              },
              items: cupit.bottomitem,
             ),
            appBar: AppBar(
              title: Text(namescrean[cupit.currentindex],
               ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),

             IconButton(onPressed: ()
           {
            cupit.changemode();
           },icon:Icon( Icons.brightness_4,))], ),
          );
        }
      ),
    );
  }
}
