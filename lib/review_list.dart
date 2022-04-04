import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final space = Container(
      margin: EdgeInsets.only(
          top: 35.0
      ),
    );
    //throw UnimplementedError();

    return Container(
      height: 750.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.vertical,
        children: [
          space,
          new Review("assets/img/otto.jpeg", "Robótica Educativa", "Construye tu propio robot Otto", "Duración: 2 meses"),
          new Review("assets/img/microbit.png", "Programación de Videojuegos II", "Construye tu propio videojuego con microBit", "Duración: 1 mes"),
          new Review("assets/img/scratch.png", "Programación de Videojuegos", "Construye tu propio videojuego con Scratch", "Duración: 1 mes"),
          new Review("assets/img/cansat.jpg", "Robótica Aerospacial", "Construye tu propio robot aerospacial CanSat", "Duración: 2 meses"),

        ],
      ),
    );

    /*
    return Column(
      children: [
        space,
        new Review("assets/img/otto.jpeg", "Robótica Educativa", "Construye tu propio robot Otto", "Duración: 2 meses"),
        new Review("assets/img/microbit.png", "Programación de Videojuegos II", "Construye tu propio videojuego con microBit", "Duración: 1 mes"),
        new Review("assets/img/scratch.png", "Programación de Videojuegos", "Construye tu propio videojuego con Scratch", "Duración: 1 mes"),
        new Review("assets/img/cansat.jpg", "Robótica Aerospacial", "Construye tu propio robot aerospacial CanSat", "Duración: 2 meses"),
        new Review("assets/img/otto.jpeg", "Robótica Educativa", "Construye tu propio robot Otto", "Duración: 2 meses"),
        new Review("assets/img/microbit.png", "Programación de Videojuegos II", "Construye tu propio videojuego con microBit", "Duración: 1 mes"),
        new Review("assets/img/scratch.png", "Programación de Videojuegos", "Construye tu propio videojuego con Scratch", "Duración: 1 mes"),
        new Review("assets/img/cansat.jpg", "Robótica Aerospacial", "Construye tu propio robot aerospacial CanSat", "Duración: 2 meses"),
      ],
    );
    */
  }

}