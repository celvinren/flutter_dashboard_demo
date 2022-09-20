import 'package:flutter/material.dart';

///
class TitleValueListTile extends StatelessWidget {
  ///
  const TitleValueListTile({
    required this.title,
    required this.value,
    super.key,
  });

  ///
  final String title;

  ///
  final String value;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    final onSurface = theme.colorScheme.onSurface is MaterialColor
        ? (theme.colorScheme.onSurface as MaterialColor).shade100
        : theme.colorScheme.onSurface;

    return ListTile(
      title: Text(
        title,
        style: theme.textTheme.bodySmall?.copyWith(
          color: onSurface,
        ),
      ),
      trailing: Text(
        value,
        style: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.onSurface,
          fontWeight: FontWeight.w700,
        ),
      ),
      contentPadding: EdgeInsets.zero,
      dense: true,
      visualDensity: const VisualDensity(vertical: -3),
    );
  }
}
