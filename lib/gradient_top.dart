import 'package:flutter/material.dart';
import 'my_clipper.dart';

class GradientTop extends StatelessWidget {

  String title = "IntiRobotics Perú";
  GradientTop(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFA7C664),
            Color(0xFFDCE8C2)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
        )
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: "Indie"
        ),
      ),
      alignment: Alignment(0.0, -0.6),
    );
  }

}