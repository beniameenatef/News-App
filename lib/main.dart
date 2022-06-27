
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/home%20layout.dart';
import 'package:new_app/modules/constant/newapp/NewApp.dart';
import 'package:new_app/modules/constant/newapp/dio%20helper.dart';


void main()
{
  //Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp(MyApp());
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{
  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepOrange,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          elevation: 20.0,
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black26,
      ),
      themeMode: ThemeMode.light,
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: newapp(),
      ),
    );
  }
}