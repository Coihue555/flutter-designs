import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff30BAD6),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [

            Color(0xff5EE8C5),
            Color(0xff30BAD6)
            ]
          )
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Screen1(),
            Screen2()
            
          ],
        ),
      )
    );
  }
}

class Screen1 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        const MainContent(),
      ],
      );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle( fontSize: 80, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50,),
          const Text('11º', style: textStyle,),
          const Text('Miércoles', style: textStyle,),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
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

class Screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: const Color(0xff30BAD6),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
          child: TextButton(
            onPressed: (){},
            child: const Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30),),
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xff0098FA),
              shape: const StadiumBorder()
            ),
          ),
        )
      ),
    );
  }
}