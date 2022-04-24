

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/insta_stories.dart';

class insta_list extends StatelessWidget {
  const insta_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    return ListView.builder(
        itemCount: 12,


        itemBuilder: (context, index) => index == 0 ? SizedBox(
          child: insta_stories(),
          // height: 120,
          height: deviceSize.height * 0.17,
        ) : Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,

          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),

              // first Row
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('assets/images/tiger.jpeg'),fit: BoxFit.fill)
                        ),
                      ),

                      SizedBox(width: 10.0,),
                      Text('tiger',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w400),),

                    ],
                  ),
                  IconButton(onPressed: (){},icon:  Icon(Icons.more_vert,size: 18,color: Colors.black,),)

                ],
              ),
            ),


            // secondRow
            Flexible(
              // flex: FlexFit.loose,
              child: Image.asset('assets/images/tigerho.jpg'),
              // fit: BoxFit.cover,
            ),


            // thirdRow
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: <Widget>[
                      Icon(FontAwesomeIcons.heart),

                      SizedBox(height: 16.0,),
                      Icon(FontAwesomeIcons.comment),


                      SizedBox(height: 16.0,),
                      Icon(FontAwesomeIcons.paperPlane),

                    ],
                  ),

                  Icon(FontAwesomeIcons.bookBookmark),

                ],
              ),
            ),

            // fourthRow
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Liked by torab, monir and 10,000 others',style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w400),),
            ),


            // fithRow
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 40.0,
                    width: 40.0,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/tiger.jpeg'),fit: BoxFit.fill)
                    ),
                  ),

                  SizedBox(width: 10.0,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Ad a public comment ...'
                      ),
                    ),
                  )

                ],
              ),
            ),
            
            
            // sixthRow
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('1 day ago',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w300),),
            )
          ],
        )

    );
  }
}
