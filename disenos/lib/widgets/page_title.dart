import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal:50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [        
            Text('Classify transaction', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 10,),
            Text('Choose a category', style: TextStyle(fontSize: 25, color: Colors.white),),
          ]),
      ),
    );
  }
}