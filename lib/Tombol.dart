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
      child: Text(ganti ? 'mode terang' : 'mode gelap'),
    );
  }
}