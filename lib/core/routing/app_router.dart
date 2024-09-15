import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/feutures/login/ui/screen/login_screeen.dart';
import 'package:docdoc/feutures/onbording/onbording_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this argument to passed in any screen like this (argument as ClassName )
    final Arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBordingScreen:
        return MaterialPageRoute(builder: (_) => const OnBordingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Route defind for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
