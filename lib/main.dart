// Purpose of main.dart

// This file contains the routings for all the pages needed
// for the activity

// Aside from that this has the function for removing the initial transition
// that Flutter displays

import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/about.dart';
import 'screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) =>
            LoginScreen(), // note that this is the intial page upon rendering the file
        '/home': (context) => HomeScreen(),
        '/about': (context) => AboutScreen(),
      },
      theme: ThemeData(
        pageTransitionsTheme: _removeTransitions(),
      ),
    );
  }
}

class _NoTransitionsBuilder extends PageTransitionsBuilder {
  const _NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T>? route,
    BuildContext? context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget? child,
  ) {
    return child!;
  }
}

PageTransitionsTheme _removeTransitions() {
  return PageTransitionsTheme(
    builders: {
      for (final platform in TargetPlatform.values)
        platform: const _NoTransitionsBuilder(),
    },
  );
}
