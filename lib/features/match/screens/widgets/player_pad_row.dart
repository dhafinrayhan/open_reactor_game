import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../models/player.dart';
import 'player_pad.dart';

class PlayerPadRow extends StatelessWidget {
  const PlayerPadRow({
    super.key,
    required this.rotationTurns,
    required this.leftPlayer,
    required this.rightPlayer,
  });

  final int rotationTurns;
  final Player leftPlayer;
  final Player rightPlayer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: RotatedBox(
        quarterTurns: rotationTurns,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: PlayerPad(
                player: leftPlayer,
                position: PlayerPadPosition.left,
              ),
            ),
            const Gap(12),
            Expanded(
              child: PlayerPad(
                player: rightPlayer,
                position: PlayerPadPosition.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
