
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/models/science.dart';
import 'package:new_app/models/setting.dart';
import 'package:new_app/modules/constant/newapp/dio%20helper.dart';
import 'package:new_app/models/busniss.dart';
import 'package:new_app/models/sport.dart';
import 'package:new_app/model/state.dart';
class newappCupit extends Cubit<newappstate>
{
  newappCupit():super(newappintialstate());
  static newappCupit get(context)=>BlocProvider.of(context);
  int currentindex=0;

  List<Widget>screan=[
    buisness(),
    sports(),
    science(),
    setting(),
  ];

  List<BottomNavigationBarItem>bottomitem=
  [
    BottomNavigationBarItem(
      icon: Icon(Icons.business),
      label: "business",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.sports_score_outlined),
      label: "sports",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.science_outlined),
      label: "science",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "counter",
    ),
  ];
  int counter=1;
  void change (int index)
  {
    currentindex=index;
    if(index == 1)
      getsport();
    if(index == 2)
      getscience();
emit(bottomnavgationstate());
  }
  // void muins()
  // {
  //   counter--;
  //   emit(countermuinsstate());
  // }
  // void plus()
  // {
  //   counter++;
  //   emit(counterplusstate());
  // }

 List<dynamic>Business=[];
 void getBusiness()
 {
   emit(newapploadingBusinessstate());
   DioHelper.getData(
     url: 'v2/top-headlines',
     query:
     {
       'country':'eg',
       'category':'business',
       'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
   },).then((value)
    {
      Business = value.data['articles'];
      print(Business[0]['title']);
      emit(newappsucessBusinessstate());
    }).catchError((error)
   {
     print(error.toString);
     emit(newapperrorBusinessstate(error.toString()));
     });


 }

  List<dynamic>sport=[];
  void getsport()
 {

   emit(newapploadingsportsstate());

   if(sport.length == 0)
   {
     DioHelper.getData(
       url: 'v2/top-headlines',
       query:
       {
         'country':'eg',
         'category':'sports',
         'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
       },
     ).then((value)
     {
       //print(value.data['articles'][0]['title']);
       sport = value.data['articles'];
       print(sport[0]['title']);

       emit(newappsucesssportsstate());
     }).catchError((error){
       print(error.toString());
       emit(newapperrorsportsstate(error.toString()));
     });
   } else
   {
     emit(newappsucesssportsstate());
   }
 }


  List<dynamic> sciences = [];
  void getscience()
  {
    emit(newapploadingsciencestate());

    if(sciences.length == 0)
    {
      DioHelper.getData(
        url: 'v2/top-headlines',
        query:
        {
          'country':'eg',
          'category':'science',
          'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
        },
      ).then((value)
      {
        //print(value.data['articles'][0]['title']);
        sciences = value.data['articles'];
        print(sciences[0]['title']);

        emit(newappsucesssciencestate());
      }).catchError((error){
        print(error.toString());
        emit(newapperrorsciencestate(error.toString()));
      });
    } else
    {
      emit(newappsucesssciencestate());
    }
  }

  bool isdark = false;
  void changemode()
  {
    isdark=!isdark;
    emit(newappchangesstate());
  }

}