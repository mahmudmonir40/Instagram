

import 'dart:ui';

import 'package:flutter/material.dart';

class insta_stories extends StatelessWidget {


  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
    children: [
      Text("Stories",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),


      Row(
        children: [
          Icon(Icons.play_arrow,color: Colors.black,size: 16,),

          Text('Watch all',style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
        ],
      )
    ],
  );



  final stories = Expanded(
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 12,

      itemBuilder: (context, index) => Stack(
        alignment: Alignment.bottomRight,
        children: [

          Container(
            height: 50.0,
            width: 50.0,

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/tiger.jpeg'),
              ),

            ),
            margin: EdgeInsets.symmetric(horizontal: 3),
          ),

          index == 0 ? Positioned(
            right: 6.0,
            child: CircleAvatar(
              backgroundColor: Colors.teal,

              radius: 8.0,
              child: Icon(Icons.add,color: Colors.white,size: 10,),
            ),

          ) : Container(),
        ],
      ),
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,

        children: [
        topText,
        stories,
      ],),
    );
  }
}
