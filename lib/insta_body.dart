

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/insta_list.dart';

class insta_body extends StatelessWidget {
  const insta_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        // Expanded(child: instastories(),flex: 1,),
        Flexible(child: insta_list()),
      ],
    );
  }
}
