import 'package:flutter/material.dart';

import '../../models/player.dart';

class PlayerPad extends StatelessWidget {
  const PlayerPad({
    super.key,
    required this.player,
    required this.position,
  });

  final Player player;
  final PlayerPadPosition position;

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
        Positioned(
          left: position == PlayerPadPosition.left ? 20 : null,
          right: position == PlayerPadPosition.right ? 20 : null,
          top: 8,
          child: Text(
            player.score.toString(),
            textAlign: switch (position) {
              PlayerPadPosition.left => TextAlign.start,
              PlayerPadPosition.right => TextAlign.end,
            },
            style: TextStyle(fontSize: 32, color: player.color.shade300),
          ),
        ),
        Positioned.fill(
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () {},
              splashColor: player.color,
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

enum PlayerPadPosition { left, right }
