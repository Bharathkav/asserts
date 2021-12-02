import 'package:assertaroundyou/error.dart';
import 'package:assertaroundyou/wrapper.dart';

import 'package:flutter/material.dart';

import 'authFolder/loginscreen.dart';
import 'authFolder/password.dart';
import 'authFolder/register.dart';
import 'home/homeWidget.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Home());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => Register());

      case '/password':
        if (args is TextEditingController) {
          return MaterialPageRoute(
            builder: (_) => Password(
              lastmail: args,
            ),
          );
        }
        return MaterialPageRoute(
          builder: (_) => const ErrorPage(),
        );
      case '/wrap':
        return MaterialPageRoute(builder: (_) => const Wapper() );
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorPage(),
        );
    }
  }
}
