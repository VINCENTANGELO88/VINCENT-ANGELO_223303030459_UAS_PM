import 'package:flutter/material.dart';
import 'chat_item.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final List<Map<String, String>> data = [
    {
      "nama": "Vincent Angelo",
      "pesan": "Okee",
      "bulan": "Januari",
      "avatar": "images/male/male_satu.jpg",
    },
    {
      "nama": "Ardian",
      "pesan": "Otw",
      "bulan": "Februari",
      "avatar": "images/male/male_dua.jpg",
    },
    {
      "nama": "Citra",
      "pesan": "Besok tugas dikumpul",
      "bulan": "Maret",
      "avatar": "images/female/female_satu.jpg",
    },
    {
      "nama": "Jaikarna",
      "pesan": "Besok UTS",
      "bulan": "April",
      "avatar": "images/male/male_tiga.jpg",
    },
    {
      "nama": "Senna",
      "pesan": "Besok UAS",
      "bulan": "Mei",
      "avatar": "images/female/female_dua.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Aplikasi Chat",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ChatItem(
              nama: data[index]['nama']!,
              pesan: data[index]['pesan']!,
              bulan: data[index]['bulan']!,
              avatar: data[index]['avatar']!,
            );
          },
        ),
      ),
    );
  }
}
