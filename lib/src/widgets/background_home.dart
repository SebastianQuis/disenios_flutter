import 'dart:math';

import 'package:flutter/material.dart';


class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var boxDecoration = const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.2, 0.8],
              colors: [
                Color(0xff2E305F),
                Color(0xff202333),
              ]
            )
          );
    return Stack( //elementos uno encima del otro
      children: [
        Container(decoration: boxDecoration,),
        Positioned(
          top: -60,
          left: -30,
          child: _CuadroRosa()
        ),
        
      ],
    );
   
  }
}


class _CuadroRosa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi/4,
      child: Container(
        width: 350,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ]
          )
        ),
      ),
    );
  }
}