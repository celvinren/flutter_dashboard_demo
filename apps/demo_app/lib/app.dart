import 'package:design_theme/design_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'home_page.dart';

/// This is the main application widget.
class App extends StatelessWidget {
  /// This widget is the root of your application.
  const App({super.key});

  @override
  Widget build(final BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
        ],
        theme: const DesignTheme().light,
        darkTheme: const DesignTheme().dark,
        home: const HomePage(title: 'Flutter Demo Home Page'),
      );
}
