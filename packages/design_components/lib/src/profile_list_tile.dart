import 'package:design_icons/design_icons.dart';
import 'package:flutter/material.dart';

///
class ProfileListTile extends StatelessWidget {
  ///
  const ProfileListTile({
    required this.leadingWidget,
    required this.title,
    required this.subtitle,
    super.key,
  });

  ///
  final Widget leadingWidget;

  ///
  final String title;

  ///
  final String subtitle;

  static const _lineHeight = 1.5;
  static const _leadingIconSize = 40.0;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      leading: SizedBox(
        height: _leadingIconSize,
        width: _leadingIconSize,
        child: CircleAvatar(
          child: leadingWidget,
        ),
      ),
      title: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          height: _lineHeight,
          color: (theme.colorScheme.onSurface as MaterialColor).shade50,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: theme.textTheme.titleSmall?.copyWith(
          height: _lineHeight,
          color: (theme.colorScheme.onSurface as MaterialColor).shade100,
        ),
      ),
      trailing: SvgIcon.asset('assets/entrance_line.svg'),
      contentPadding: EdgeInsets.zero,
    );
  }
}
