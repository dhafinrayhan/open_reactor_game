import 'package:flutter/material.dart';

class PlayerPad extends StatelessWidget {
  const PlayerPad({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(20);

    return Stack(
      children: [
        Container(
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: borderRadius,
          ),
        ),
        Positioned.fill(
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () {},
              splashColor: color,
              borderRadius: borderRadius,
              child: const SizedBox(
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
