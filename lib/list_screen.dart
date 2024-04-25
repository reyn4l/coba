//import "package:coba/gambar_screen.dart";
import "package:coba/kalkulator_screen.dart";
import "package:coba/nilai_akhir.dart";
import "package:flutter/material.dart";
import 'package:coba/cardscreen.dart';
import 'package:coba/nilai_akhir.dart';

class listscreen extends StatelessWidget {
  const listscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('List Screen'), backgroundColor: const Color.fromARGB(255, 34, 156, 255)),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => kalkulatorscreen(),
                  ),
                );
              },
              child: Text('Kalkulator')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => cardscreen(),
                  ),
                );
              },
               child: Text('gambar')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => nilai_akhir(),
                  ),
                );
              },
              child: Text('nilai_akhir')),
        ],
      ),
    );
  }
}
