import 'package:flutter/material.dart';

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
    return const Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
