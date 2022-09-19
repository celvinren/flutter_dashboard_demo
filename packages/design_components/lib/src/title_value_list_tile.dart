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

  static const _lineHeight = 1.5;
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      title: Text(
        title,
        style: theme.textTheme.bodySmall?.copyWith(
          height: _lineHeight,
          color: (theme.colorScheme.onSurface as MaterialColor).shade100,
        ),
      ),
      trailing: Text(
        value,
        style: theme.textTheme.bodySmall?.copyWith(
          height: _lineHeight,
          color: theme.colorScheme.onSurface,
          fontWeight: FontWeight.w700,
        ),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }
}
