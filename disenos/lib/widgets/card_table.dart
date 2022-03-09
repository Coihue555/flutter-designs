import 'dart:ui';

import 'package:flutter/material.dart';


class CardTable extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(icon: Icons.dashboard, color: Colors.blueAccent, text: 'General',),
            _SingleCard(icon: Icons.directions_bus_filled_outlined, color: Color.fromARGB(255, 178, 50, 201), text: 'Transports',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.local_grocery_store, color: Color.fromARGB(255, 247, 103, 151), text: 'Shopping',),
            _SingleCard(icon: Icons.receipt, color: Color.fromARGB(255, 255, 139, 7), text: 'Bills',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.movie, color: Color.fromARGB(255, 93, 132, 214), text: 'Entertainment',),
            _SingleCard(icon: Icons.fastfood, color: Color.fromARGB(255, 76, 184, 85), text: 'Grocery',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.dashboard, color: Colors.blueAccent, text: 'General',),
            _SingleCard(icon: Icons.directions_bus_filled_outlined, color: Color.fromARGB(255, 178, 50, 201), text: 'Transports',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.local_grocery_store, color: Color.fromARGB(255, 247, 103, 151), text: 'Shopping',),
            _SingleCard(icon: Icons.receipt, color: Color.fromARGB(255, 255, 139, 7), text: 'Bills',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.movie, color: Color.fromARGB(255, 93, 132, 214), text: 'Entertainment',),
            _SingleCard(icon: Icons.fastfood, color: Color.fromARGB(255, 76, 184, 85), text: 'Grocery',),
          ]
        ),

      ],
    );
  }
}


class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 5,),
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(this.icon, size: 40, color: Colors.white,),
                  radius: 48,
                ),
                const SizedBox(height: 5,),
                Text(this.text, style: TextStyle(color: this.color, fontSize: 18),),
        
        
              ]);
    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({
    Key? key,
    required this.child
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 67, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}