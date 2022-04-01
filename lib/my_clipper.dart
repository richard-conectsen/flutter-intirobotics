import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    /*
    path.lineTo(0, size.height-30);
    path.quadraticBezierTo(size.width/6, size.height-35, 2*size.width/6, size.height-20);
    path.quadraticBezierTo(size.width/2, size.height, 4*size.width/6, size.width-20);
    path.quadraticBezierTo(5*size.width/6, size.height-35, size.width, size.height-30);

    path.lineTo(size.width, 0);
     */
    /*
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height,
        size.width, size.height - 100);
    path.lineTo(size.width, 0);

     */
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width/4, size.height
        - 40, size.width/2, size.height-20);
    path.quadraticBezierTo(3/4*size.width, size.height,
        size.width, size.height-30);
    path.lineTo(size.width, 0);

    path.close();
    //throw UnimplementedError();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    //throw UnimplementedError();
    return true;
  }

}