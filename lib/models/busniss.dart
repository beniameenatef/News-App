import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/component/comp.dart';
import 'package:new_app/model/cupit.dart';
import 'package:new_app/model/state.dart';

class buisness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context)=>newappCupit(),
      child: BlocConsumer<newappCupit,newappstate>(
        listener:(context,index) {},
        builder:(context,index)
        {
          var List =newappCupit.get(context).Business;
          return articleBuilder(List);
        },
      )
    );
  }

}
