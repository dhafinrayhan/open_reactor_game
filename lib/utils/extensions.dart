import 'package:flutter/material.dart';

extension ContextNavigation on BuildContext {
  void pushPage(WidgetBuilder builder) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: builder),
    );
  }
}
