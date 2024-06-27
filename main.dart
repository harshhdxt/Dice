import 'package:flutter/material.dart';
import 'package:first_app/super_max.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: SuperMax(
        colors: [Color.fromARGB(255, 211, 209, 209)],
      )),
    ),
  );
}
