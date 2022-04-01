import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Column(
      children: [
        new Review("assets/img/otto.jpeg", "Robótica Educativa", "Construye tu propio robot Otto", "2 meses"),
        new Review("assets/img/microbit.png", "Programación de Videojuegos II", "Construye tu propio videojuego con microBit", "1 mes"),
        new Review("assets/img/scratch.png", "Programación de Videojuegos", "Construye tu propio videojuego con Scratch", "1 mes"),
        new Review("assets/img/cansat.jpg", "Robótica Aerospacial", "Construye tu propio robot aerospacial CanSat", "2 meses"),
      ],
    );
  }

}