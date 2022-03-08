import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          const Image(image: AssetImage('assets/landscape.jpg')),
          //Title Section
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: const [
                    Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black26, fontSize: 20),),
                ],),
                const Spacer(),
                const Icon(Icons.star, color: Colors.red,),
                const Text('41'),

            ],),
          ),
          //Button Section
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CustomButton(icon: Icons.call, text: 'Call'),
                CustomButton(icon: Icons.navigation, text: 'Route'),
                CustomButton(icon: Icons.share, text: 'Share'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text('Nisi laborum do aute do ipsum consequat ut proident cillum consectetur Lorem ex aliqua id. Dolore voluptate veniam adipisicing pariatur aute consequat do proident quis et exercitation minim enim qui. Labore est minim sint qui dolor occaecat nulla mollit. Excepteur voluptate amet sunt quis magna anim commodo laborum reprehenderit veniam. Occaecat quis magna ex Lorem sint occaecat incididunt voluptate sunt dolor nostrud nostrud ex. Dolor nisi ea pariatur non excepteur velit cupidatat do do duis minim nisi Lorem.', style: TextStyle(fontSize: 20),))
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    required this.icon,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blueAccent, size: 45,),
        Text(text),
      ],
    );
  }
}