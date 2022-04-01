import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/otto.jpeg";
  String name = "Robótica";
  String desc = "Robotica educativa para niños de 8 años a más";
  String tim = "2 meses";

  Review(this.pathImage, this.name, this.desc, this.tim);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final time = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        tim,
        style: TextStyle(
          fontFamily: "Indie",
          fontSize: 20.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final descrip = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        desc,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Indie",
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final cursoName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        style: TextStyle(
          fontFamily: "Indie",
          fontSize: 17.0
        ),
      ),
    );

    final description = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        cursoName,
        descrip,
        time
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );
    //throw UnimplementedError();
    return Row(
      children: [
        photo,
        description
      ],
    );
  }

}