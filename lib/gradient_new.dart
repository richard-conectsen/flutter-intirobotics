import 'package:flutter/material.dart';
import 'package:flutter_intirobotics/my_clipper.dart';
import 'package:flutter_intirobotics/review_list.dart';

import 'main.dart';

class GradientNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError()
    final title = Center(
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0
        ),
        child: Text(
          "IntiRobotics Perú",
          style: TextStyle(
              fontFamily: "Indie",
              fontSize: 30.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );

    final menu = Container(
      margin: EdgeInsets.only(
        top: 60.0,
        left: 20.0
      ),
      child: InkWell(
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: [
            Icon(
              Icons.menu,
              color: Colors.white,
            )
          ],
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                color: Color(0xFFA7C664)
              ),
            ),
          ),
          Center(
            child: ListView(
              children: [
                title,
                ReviewList()
              ],
            ),
          ),
          menu
        ],
      ),
    );
  }

}