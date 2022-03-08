import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items:  const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined, size: 30,),
          label: 'Calendario',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart, size: 30),
          label: 'Graficos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, size: 30),
          label: 'Contactos',
        ),
      ]
    );
  }
}