import 'package:flutter/material.dart';
import 'package:hiver/screens/home_page.dart';
import 'package:hiver/screens/pofile.dart';

class RouteManager {
  static generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomePage());
      case "/profile":
        return MaterialPageRoute(
          builder: (_) => ProfilePage(
            data: args,
          ),
        );
    }
  }
}
