import 'package:flutter/material.dart';


class CardTable extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(icon: Icons.dashboard, color: Colors.orange, text: 'General',),
            _SingleCard(icon: Icons.bus_alert, color: Colors.purple, text: 'Transports',),
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
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(62, 67, 107, 0.7),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(height: 5,),
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.pie_chart_outline, size: 80,),
            radius: 48,
          ),
          SizedBox(height: 5,),
          Text('General', style: TextStyle(color: Colors.blue, fontSize: 18),),


        ]),
    );
  }
}