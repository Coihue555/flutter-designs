import 'package:flutter/material.dart';

class ComplexScreen extends StatelessWidget {
   
  const ComplexScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Stack(
           children: [
              Background(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CustomButton(
                          icon: Icons.dashboard_rounded,
                          text: 'General',
                          colorChosen: Colors.red,
                        ),
                        CustomButton(
                          icon: Icons.shopping_bag,
                          text: 'Shopping',
                          colorChosen: Colors.indigo,
                        ),
                        CustomButton(
                          icon: Icons.movie_creation,
                          text: 'Entertainment',
                          colorChosen: Colors.yellow,
                        ),
                      ],
                    ),
                    Column(
                      children: const[
                        CustomButton(
                          icon: Icons.directions_bus_filled,
                          text: 'Transport',
                          colorChosen: Colors.brown,
                        ),
                        CustomButton(
                          icon: Icons.receipt,
                          text: 'Bills',
                          colorChosen: Colors.green,
                        ),
                        CustomButton(
                          icon: Icons.local_grocery_store,
                          text: 'Grocery',
                          colorChosen: Colors.pink,
                        ),
                        
                      ],
                    ),
                  ],
                ),
              ),
           ],
           
         ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: 
       const Image(
          image: AssetImage('assets/scroll-1.png')
        )
    );
  }
}


class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color colorChosen;

  const CustomButton({
    required this.icon,
    required this.text,
    required this.colorChosen,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(children: [
            Icon(icon, color: colorChosen, size: 45, ),
            Text(text, style: TextStyle(color: colorChosen),),
          ]),
        )
        
      ],
    );
  }
}