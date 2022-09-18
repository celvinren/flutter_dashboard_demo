import 'package:flutter/material.dart';

import 'home_page.dart';

/// This is the main application widget.
class App extends StatelessWidget {
  /// This widget is the root of your application.
  const App({super.key});

  @override
  Widget build(final BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(title: 'Flutter Demo Home Page'),
      );
}
