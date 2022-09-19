import 'package:flutter/material.dart';

///
class CardTitle extends StatelessWidget {
  ///
  const CardTitle({
    required this.title,
    super.key,
  });

  ///
  final String title;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    return Text(
      title,
      style: theme.textTheme.titleLarge?.copyWith(
        color: (theme.colorScheme.onSurface as MaterialColor).shade50,
      ),
    );
  }
}
