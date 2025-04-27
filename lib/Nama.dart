import 'package:flutter/material.dart';

class Nama extends StatelessWidget {
  const Nama({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text('Kunyit23', style: TextStyle(fontSize: 20)),
    );
  }
}