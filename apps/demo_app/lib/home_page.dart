import 'package:flutter/material.dart';

import 'app_localizations.dart';

///
class HomePage extends StatelessWidget {
  /// This widget is the home page of your application.
  const HomePage({
    required this.title,
    super.key,
  });

  /// The title of the page.
  final String title;

  @override
  Widget build(final BuildContext context) {
    final localization = useLocalization(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${localization.dashboardDemo}\n You have pushed the '
              'button this many times:',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
