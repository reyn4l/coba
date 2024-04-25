import 'package:coba/kalkulator_screen.dart';
import 'package:coba/list_screen.dart';
import 'package:flutter/material.dart';
import 'screen2.dart';
import 'kalkulator_screen.dart';
import 'list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: listscreen(),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color.fromARGB(96, 0, 238, 255),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
