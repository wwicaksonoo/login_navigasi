import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({
    super.key,
    this.labelText,
    this.radius,
  });

  final String? labelText;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return TextField(
    decoration: InputDecoration(
      fillColor: const Color.fromARGB(255, 0, 0, 0),
      filled: true,
      labelText: "$labelText",
      hintText: "ketik $labelText",
      prefixIcon: Icon(Icons.person),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius ?? 15),
      )
    ),
    
    
    );
  }
}

