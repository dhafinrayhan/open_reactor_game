import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widgets/game_box.dart';
import 'widgets/player_pad.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: PaddedColumn(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: PlayerPad()),
                  Gap(12),
                  Expanded(child: PlayerPad()),
                ],
              ),
            ),
            Gap(24),
            Expanded(child: GameBox()),
            Gap(24),
            SizedBox(
              height: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: PlayerPad()),
                  Gap(12),
                  Expanded(child: PlayerPad()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
