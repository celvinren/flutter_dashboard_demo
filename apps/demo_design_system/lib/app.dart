import 'package:app_blocs/app_blocs.dart';
import 'package:design_theme/design_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page.dart';

/// This is the main application widget.
class App extends StatelessWidget {
  /// This widget is the root of your application.
  const App({super.key});

  @override
  Widget build(final BuildContext context) =>
      BlocBuilder<ThemeCubit, ThemeState>(
        builder: (final context, final state) => MaterialApp(
          title: 'Flutter Demo',
          theme: const DesignTheme().light,
          darkTheme: const DesignTheme().dark,
          themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: const HomePage(title: 'Flutter Demo Home Page'),
        ),
      );
}
