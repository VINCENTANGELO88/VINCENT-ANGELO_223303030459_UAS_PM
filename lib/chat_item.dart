import 'package:flutter/material.dart';
import 'login_page.dart';

class ChatItem extends StatelessWidget {
  final String nama;
  final String pesan;
  final String bulan;
  final String avatar;

  const ChatItem({
    Key? key,
    required this.nama,
    required this.pesan,
    required this.bulan,
    required this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PageDua(nama: nama),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.red, width: 2),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(avatar),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nama,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.check, size: 16),
                        const SizedBox(width: 4),
                        Text(pesan),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Text(bulan),
          ],
        ),
      ),
    );
  }
}
