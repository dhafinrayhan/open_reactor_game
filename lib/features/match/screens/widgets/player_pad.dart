import 'package:flutter/material.dart';

class PlayerPad extends StatelessWidget {
  const PlayerPad({super.key});

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
