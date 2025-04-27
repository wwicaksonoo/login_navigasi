import 'package:flutter/material.dart';

class Tombol extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isDark;

  const Tombol({super.key, required this.onPressed, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isDark ? Colors.white : Colors.black,
        foregroundColor: isDark ? Colors.black : Colors.white,
      ),
      child: Text(isDark ? 'Switch to Light Theme' : 'Switch to Dark Theme'),
    );
  }
}