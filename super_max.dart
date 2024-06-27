import 'package:first_app/dice.dart';
import 'package:flutter/material.dart';

var startAligment = Alignment.topLeft;
var endAlignment = Alignment.center;

class SuperMax extends StatelessWidget {
  const SuperMax({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color.fromARGB(255, 218, 92, 54),
            Color.fromARGB(255, 0, 0, 0)
          ],
        ),
      ),
      child: const Center(
        child: dice(),
      ),
    );
  }
}
