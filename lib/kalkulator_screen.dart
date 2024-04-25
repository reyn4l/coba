import 'package:flutter/material.dart';

class kalkulatorscreen extends StatefulWidget {
  const kalkulatorscreen({super.key});

  @override
  State<kalkulatorscreen> createState() => _kalkulatorscreenState();
}

class _kalkulatorscreenState extends State<kalkulatorscreen> {
  TextEditingController angka1Controller = TextEditingController();
  String tampilhasil = "hasil kosong";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Kalkulator"),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            TextField(
              controller: angka1Controller,
            ),
            ElevatedButton(
                onPressed: () {
                  print(angka1Controller.text);
                  setState(() {
                    tampilhasil = angka1Controller.text;
                  });
                },
                child: Text('Tampil')),
            Text(tampilhasil),
          ],
        ));
  }
}
