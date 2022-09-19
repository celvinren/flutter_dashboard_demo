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
          color: (theme.colorScheme.onSurface as MaterialColor).shade300,
        ),
      ),
      trailing: value != null
          ? CircleAvatar(
              backgroundColor: (theme.colorScheme.onSurface as MaterialColor)
                  .withOpacity(_valueOpacity),
              radius: _valueRadius,
              child: Text(
                value ?? '',
                style: theme.textTheme.bodySmall?.copyWith(
                  color:
                      (theme.colorScheme.onSurface as MaterialColor).shade200,
                ),
              ),
            )
          : null,
      contentPadding: EdgeInsets.zero,
    );
  }
}
