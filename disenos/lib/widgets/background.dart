import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
    final boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2,0.8],
          colors: [
            Color.fromARGB(255, 72, 44, 99),
            Color.fromARGB(255, 39, 10, 66),
          ]
        )
      );
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          decoration: boxDecoration,
        ),
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox()
        ),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 12.0,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ]
          )
          ),
    
      ),
    );
  }
}