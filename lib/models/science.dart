
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/component/comp.dart';
import 'package:new_app/model/cupit.dart';
import 'package:new_app/model/state.dart';

class science extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<newappCupit, newappstate>(
      listener: (context, state) {},
      builder: (context, state)
      {
        var List = newappCupit.get(context).sciences;

        return articleBuilder(List);
      },
    );  }
}
//path= https://newsapi.org/v2/everything?
// method: q=Apple&from=2021-11-08&sortBy=popularity&apiKey=API_KEY