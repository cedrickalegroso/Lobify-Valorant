import 'package:flutter/material.dart';
import 'package:lobify/Screens/auth.dart';
import 'package:lobify/Screens/dashboard.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/dash':
        return MaterialPageRoute(builder: (_) => const DashBoard());
      default:
        return MaterialPageRoute(builder: (_) => const AuthPage());
    }
  }
}
