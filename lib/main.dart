import 'package:flutter/material.dart';

import 'features/match/screens/match.dart';
import 'utils/extensions.dart';

void main() {
  runApp(const OrgApp());
}

class OrgApp extends StatelessWidget {
  const OrgApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Reactor Game',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () => context.pushPage((_) => const MatchScreen()),
          child: const Text('Play'),
        ),
      ),
    );
  }
}
