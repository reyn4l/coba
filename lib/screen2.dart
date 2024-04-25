import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(
            'Halaman 2',
            style: TextStyle(
                fontSize: 30.5, color: Color.fromARGB(255, 13, 255, 0)),
          ),
        ),
        backgroundColor: Color.fromARGB(66, 0, 33, 250),
      ),
      body: Column(
        children: [
          Text('Andi'),
          Text('Budi'),
          Text('Cici'),
          Container(
            width: 70,
            height: 30,
            color: Colors.orange,
            child: Text('Dedi'),
          )
        ],
      ),
    );
  }
}
