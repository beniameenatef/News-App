
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

Widget buildarticleItem(context,article)=>Padding(
  padding: const EdgeInsets.all(10.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Image.network('${article['urlToImage']}',
          height:125 ,
          width: 125,
          fit: BoxFit.cover,),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)),
      ) ,
      SizedBox(width: 20,),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text('${article['title']} ',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style:Theme.of(context).textTheme.bodyText1
                ),
              ),
              SizedBox(height:40 ,),
              Text('${article['publishedAt']}',
                style: TextStyle(
                    fontSize: 15
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
);
Widget buildlinewidget(context)=>Padding(
  padding: const EdgeInsetsDirectional.only(start: 10.0),
  child: Container(
    width: double.infinity,
    height: 1,
    color: Colors.orange,
  ),
);
Widget articleBuilder(list) => ConditionalBuilder(
  condition: list.length > 0,
  builder: (context) =>
      ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => buildarticleItem(context,list[index]),
        separatorBuilder: (context, index) => buildlinewidget(context),
        itemCount:list.length ,),
  fallback: (context) => Center(child: CircularProgressIndicator()),
);
