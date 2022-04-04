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
    final icon = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final time = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        tim,
        style: TextStyle(
          fontFamily: "Indie",
          fontSize: 20.0,
          fontWeight: FontWeight.w500
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
        top: 20.0,
        left: 20.0
      ),
      child: Text(
        name,
        style: TextStyle(
          fontFamily: "Indie",
          fontSize: 17.0,
          fontWeight: FontWeight.w900
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
        top: 10.0,
        left: 10.0,
        bottom: 10.0
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

    final fav = Material(
      color: Colors.white,
      child: Center(
        child: Ink(
          decoration: const ShapeDecoration(
            color: Color(0xFFA7C664),
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: const Icon(Icons.add),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
      ),
    );

    final art = Card(
      margin: EdgeInsets.only(
        top: 10.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              photo,
              Expanded(child: description),
              Container(
                margin: EdgeInsets.only(
                  right: 10.0
                ),
                child: Row(
                  children: [
                    fav
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
    return art;
    /*
    return Row(
      children: [
        photo,
        description,
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(
            top: 10.0,
            right: 20.0,
          ),
          child: Text(
            "Hola",

          ),
        ),

      ],
    );
    */
  }

}