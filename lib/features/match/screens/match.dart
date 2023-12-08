import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/colors.dart';
import '../models/player.dart';
import 'widgets/game_box.dart';
import 'widgets/player_pad_row.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PaddedColumn(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PlayerPadRow(
              rotationTurns: 2,
              leftPlayer: Player(color: AppColors.p3),
              rightPlayer: Player(color: AppColors.p4),
            ),
            const Gap(24),
            const Expanded(child: GameBox()),
            const Gap(24),
            PlayerPadRow(
              rotationTurns: 0,
              leftPlayer: Player(color: AppColors.p1),
              rightPlayer: Player(color: AppColors.p2),
            ),
          ],
        ),
      ),
    );
  }
}
