import 'package:design_icons/design_icons.dart';
import 'package:flutter/material.dart';

///
class ProfileListTile extends StatelessWidget {
  ///
  const ProfileListTile({
    required this.leadingImage,
    required this.title,
    required this.subtitle,
    super.key,
  });

  ///
  final ImageProvider<Object>? leadingImage;

  ///
  final String title;

  ///
  final String subtitle;

  static const _lineHeight = 1.5;
  static const _leadingIconSize = 40.0;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    final onSurfaceTitle = theme.colorScheme.onSurface is MaterialColor
        ? (theme.colorScheme.onSurface as MaterialColor).shade50
        : theme.colorScheme.onSurface;

    final onSurfaceSubtitle = theme.colorScheme.onSurface is MaterialColor
        ? (theme.colorScheme.onSurface as MaterialColor).shade100
        : theme.colorScheme.onSurface;

    return ListTile(
      leading: SizedBox(
        height: _leadingIconSize,
        width: _leadingIconSize,
        child: CircleAvatar(
          backgroundImage: leadingImage,
          // radius: 100,
        ),
      ),
      title: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          height: _lineHeight,
          color: onSurfaceTitle,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: theme.textTheme.titleSmall?.copyWith(
          height: _lineHeight,
          color: onSurfaceSubtitle,
        ),
      ),
      trailing: SvgIcon.asset('assets/entrance_line.svg'),
      contentPadding: EdgeInsets.zero,
    );
  }
}
