import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class cardscreen extends StatefulWidget {
  const cardscreen({super.key});

  @override
  State<cardscreen> createState() => _cardscreenState();
}

class _cardscreenState extends State<cardscreen> {
  final player = AudioPlayer();

  String? nama;
  gantinama(String ganti) {
    setState(() {
      nama = ganti;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gambar"),
        backgroundColor: const Color.fromARGB(255, 34, 174, 255),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () async {
                    gantinama("godzilla");
                    await player.setAsset("asetmedia/suara/godzilla.mp3");
                    await player.play();
                  },
                  child: Image.asset("asetmedia/gambar/godzila.jpg"),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () async {
                    gantinama("Mothra");
                    await player.setAsset("asetmedia/suara/Mothra.mp3");
                    await player.play();
                  },
                  child: Image.asset("asetmedia/gambar/Mothra2.jpg"),
                ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () async {
                    gantinama("King_ghidora");
                    await player.setAsset("asetmedia/suara/ghidora.mp3");
                    await player.play();
                  },
                  child: Image.asset("asetmedia/gambar/ghidora.jpg"),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () async {
                    gantinama("rodan");
                    await player.setAsset("asetmedia/suara/rodan.mp3");
                    await player.play();
                  },
                  child: Image.asset("asetmedia/gambar/rodan.jpg"),
                ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(175, 0, 175, 0),
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () async {
                    gantinama("Mechagodzilla");
                    await player.setAsset("asetmedia/suara/Mechagodzilla.mp3");
                    await player.play();
                  },
                  child: Image.asset("asetmedia/gambar/Mechagodzilla.jpg"),
                ))
              ],
            ),
          ),
          Text(nama ?? "Klik Gambar")
        ],
      ),
    );
  }
}
