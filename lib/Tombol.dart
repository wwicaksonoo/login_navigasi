import 'package:flutter/material.dart';
//ganti ganti mode
class Tombol extends StatelessWidget {
  final VoidCallback onPressed;
  final bool ganti;

  const Tombol({super.key, required this.onPressed, required this.ganti});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ganti ? Colors.white : Colors.black,
        foregroundColor: ganti ? Colors.black : Colors.white,
      ),
      child: Text(ganti ? 'mode terang' : 'mode gelap'),
    );
  }
}