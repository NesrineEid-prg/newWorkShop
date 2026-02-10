import 'package:flutter/material.dart';
import 'package:workshop/core/presentation/home_screen.dart';
import 'package:workshop/core/routing/routes.dart';

class AppRouter {
  Route gernerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(child: Text('no route defined for:${setting.name}')),
            );
          },
        );
    }
  }
}
