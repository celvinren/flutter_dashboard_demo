import 'package:flutter/material.dart';

/// This widget is the home page of your application.
class HomePage extends StatelessWidget {
  /// This widget is the home page of your application.
  const HomePage({
    required this.title,
    super.key,
  });

  /// The title of the page.
  final String title;

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
            ],
          ),
        ),
      );
}
