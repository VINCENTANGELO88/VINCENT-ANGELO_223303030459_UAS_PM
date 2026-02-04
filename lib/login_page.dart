import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  final String nama;
  const PageDua({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "$nama",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text(
          "Halo $nama",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
