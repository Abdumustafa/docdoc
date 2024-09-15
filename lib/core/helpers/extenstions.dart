import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  void pushName(String routeName) {
    Navigator.of(this).pushNamed(routeName);
  }

  void pushReplacementNamed(String routeName) {
    Navigator.of(this).pushReplacementNamed(routeName);
  }

  void pushNamedAndRemoveUntil(String routeName) {
    Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
