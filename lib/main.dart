import 'package:flutter/material.dart';
import 'package:workshop/core/routing/app_routes.dart';
import 'package:workshop/core/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workshop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialRoute: AppRoutes.homeScreen,
      onGenerateRoute: AppRouter().gernerateRoute,
    );
  }
}
