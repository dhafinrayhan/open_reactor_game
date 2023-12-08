import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/colors.dart';
import 'widgets/game_box.dart';
import 'widgets/player_pad.dart';

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
            SizedBox(
              height: 180,
              child: RotatedBox(
                quarterTurns: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: PlayerPad(
                        color: AppColors.p3,
                        position: PlayerPadPosition.left,
                      ),
                    ),
                    const Gap(12),
                    Expanded(
                      child: PlayerPad(
                        color: AppColors.p4,
                        position: PlayerPadPosition.right,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(24),
            const Expanded(child: GameBox()),
            const Gap(24),
            SizedBox(
              height: 180,
              child: RotatedBox(
                quarterTurns: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: PlayerPad(
                        color: AppColors.p1,
                        position: PlayerPadPosition.left,
                      ),
                    ),
                    const Gap(12),
                    Expanded(
                      child: PlayerPad(
                        color: AppColors.p2,
                        position: PlayerPadPosition.right,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
