import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/model/cupit.dart';
import 'package:new_app/model/state.dart';

class NewsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => newappCupit()..getBusiness()..getsport()..getscience(),
      child: BlocConsumer<newappCupit, newappstate>(
        listener: (context, state) {},
        builder: (context, state)
        {
          var cubit = newappCupit.get(context);

          return Scaffold(
            appBar: AppBar(
              title: Text(
                'News App',
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
            body: cubit.screan[cubit.currentindex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentindex,
              onTap: (index) {
                cubit.change(index);
              },
              items: cubit.bottomitem,
            ),
          );
        },
      ),
    );
  }
}