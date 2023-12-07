import 'package:flutter/material.dart';

class GameBox extends StatelessWidget {
  const GameBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
