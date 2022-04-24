

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/insta_body.dart';

class insta_home extends StatelessWidget {

  final topBar = AppBar(

    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt,color: Colors.black,),


    // title: Container(
    //   height: 35.5,
    //
    //   child: Image.asset("assets/images/insta.png",fit: BoxFit.cover,),
    // ),
    title: SizedBox(
      height: 35.0,
      child: Image.asset("assets/images/insta.png",fit: BoxFit.cover,),
    ),


    actions: [
      Padding(padding: EdgeInsets.only(right: 17),child: Icon(Icons.send,color: Colors.black,),),
    ],

  );

  // const insta_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,

      body: insta_body(),

      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,

        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              IconButton(onPressed: null, icon: Icon(Icons.home,color: Colors.black,)),

              IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.grey,)),

              IconButton(onPressed: null, icon: Icon(Icons.add_box,color: Colors.grey,)),

              IconButton(onPressed: null, icon: Icon(Icons.favorite_outline_rounded,color: Colors.grey,)),

              IconButton(onPressed: null, icon: Icon(Icons.account_box,color: Colors.grey,)),
            ],
          ),
        ),
      ),
    );
  }
}
