import 'dart:html';

import 'package:flutter/material.dart';

class nilai_akhir extends StatefulWidget {
  const nilai_akhir({super.key});

  @override
  State<nilai_akhir> createState() => _nilai_akhirState();
}

class _nilai_akhirState extends State<nilai_akhir> {
  String? nilaiAkhirHuruf;
  double? nilairatarata;

  TextEditingController? inputNilaiTugas = TextEditingController();
  TextEditingController? inputNilaiUTS = TextEditingController();
  TextEditingController? inputNilaiUAS = TextEditingController();

  hitungnilai() {
    setState(() {
      int nilai1 = int.parse(inputNilaiTugas?.text ?? "0");
      int nilai2 = int.parse(inputNilaiUTS?.text ?? "0");
      int nilai3 = int.parse(inputNilaiUAS?.text ?? "0");
      nilairatarata = (nilai1 + nilai2 + nilai3) / 3;

      KonversiHuruf(nilairatarata ?? 0);
    });
  }

  KonversiHuruf(double nilai) {
    if (nilai >= 90 && nilai <= 100) {
      nilaiAkhirHuruf = "nilai A";
    } else if (nilai >= 70 && nilai <= 89) {
      nilaiAkhirHuruf = "nilai b";
    } else if (nilai >= 50 && nilai <= 69) {
      nilaiAkhirHuruf ="nilai c";
    } else {
      nilaiAkhirHuruf ="belum lulus";
    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('nilai_akhir'),
        backgroundColor: Color.fromARGB(255, 31, 139, 211),
      ),
      body: Column (children: [
        Text(nilaiAkhirHuruf ?? "nilai_akhir"),
        SizedBox(height: 30),
        TextFormField(
          decoration: InputDecoration(labelText: "masukkan nilai Tugas" ),
          controller: inputNilaiTugas),
        TextFormField(
          decoration: InputDecoration(labelText: "masukkan nilai UTS"),
          controller: inputNilaiUTS),
        TextFormField(
          decoration: InputDecoration(labelText: "masukkan nilai UAS"),
          controller: inputNilaiUAS),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: (){
            hitungnilai();
          }, 
          child: Text('Hitung nilai')),
        Text("nilai rata rata"),
        Text('0')
      ],),
    );
  }
}