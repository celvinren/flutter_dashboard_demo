import 'package:flutter/material.dart';

///
class SideBarListTile extends StatelessWidget {
  ///
  const SideBarListTile({
    required this.leadingWidget,
    required this.title,
    this.value,
    super.key,
  });

  ///
  final Widget leadingWidget;

  ///
  final String title;

  ///
  final String? value;

  static const _lineHeight = 1.5;
  static const _leadingIconSize = 20.0;
  static const _valueOpacity = 0.1;
  static const _valueRadius = 15.0;
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    final onSurfaceMessageBackgroundColor =
        theme.colorScheme.onSurface is MaterialColor
            ? (theme.colorScheme.onSurface as MaterialColor).shade50
            : theme.colorScheme.onSurface;

    final onSurfaceTitle = theme.colorScheme.onSurface is MaterialColor
        ? (theme.colorScheme.onSurface as MaterialColor).shade300
        : theme.colorScheme.onSurface;

    final onSurfaceTrailing = theme.colorScheme.onSurface is MaterialColor
        ? (theme.colorScheme.onSurface as MaterialColor).shade200
        : theme.colorScheme.onSurface;

    return ListTile(
      leading: SizedBox(
        height: _leadingIconSize,
        width: _leadingIconSize,
        child: leadingWidget,
      ),
      title: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          height: _lineHeight,
          color: onSurfaceTitle,
        ),
      ),
      trailing: value != null
          ? CircleAvatar(
              backgroundColor:
                  onSurfaceMessageBackgroundColor.withOpacity(_valueOpacity),
              radius: _valueRadius,
              child: Text(
                value ?? '',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: onSurfaceTrailing,
                ),
              ),
            )
          : null,
      contentPadding: EdgeInsets.zero,
    );
  }
}
