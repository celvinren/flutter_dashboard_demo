import 'package:flutter/material.dart';

import 'home_page_desktop.dart';
import 'home_page_mobile.dart';

/// This widget is the home page of your application.
class HomePage extends StatelessWidget {
  /// This widget is the home page of your application.
  const HomePage({
    required this.title,
    super.key,
  });

  /// The title of the page.
  final String title;

  static const _mobileWidth = 600;
  @override
  Widget build(final BuildContext context) => LayoutBuilder(
        builder: (final context, final constraints) =>
            constraints.maxWidth < _mobileWidth
                ? const HomePageMobile()
                : const HomePageDesktop(),
      );
}
