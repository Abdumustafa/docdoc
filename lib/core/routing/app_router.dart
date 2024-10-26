import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/feutures/login/logic/login_cubit.dart';
import 'package:docdoc/feutures/login/ui/screen/login_screeen.dart';
import 'package:docdoc/feutures/onbording/onbording_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feutures/home/ui/home_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this argument to passed in any screen like this (argument as ClassName )
    final Arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBordingScreen:
        return MaterialPageRoute(builder: (_) => const OnBordingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child:  LoginScreen(),
                ));

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
