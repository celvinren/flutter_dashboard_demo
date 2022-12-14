import 'package:design_theme/design_theme.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

/// This is the main application widget.
class App extends StatelessWidget {
  /// This widget is the root of your application.
  const App({super.key});

  @override
  Widget build(final BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: const DesignTheme().light,
        darkTheme: const DesignTheme().dark,
        home: const HomePage(title: 'Flutter Demo Home Page'),
      );
}
