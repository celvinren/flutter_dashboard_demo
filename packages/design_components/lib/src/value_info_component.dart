import 'package:design_icons/design_icons.dart';
import 'package:flutter/material.dart';

///
class ValueInfoComponent extends StatelessWidget {
  ///
  const ValueInfoComponent({
    required this.icon,
    required this.title,
    required this.value,
    required this.isUp,
    required this.percent,
    this.fontSizeOverride,
    super.key,
  });

  ///
  final Widget icon;

  ///
  final String title;

  ///
  final String value;

  ///
  final bool isUp;

  final double? fontSizeOverride;

  ///
  final String percent;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    final onSurface = theme.colorScheme.onSurface is MaterialColor
        ? (theme.colorScheme.onSurface as MaterialColor).shade200
        : theme.colorScheme.onSurface;

    final secondary = theme.colorScheme.secondary is MaterialColor
        ? (theme.colorScheme.secondary as MaterialColor).shade300
        : theme.colorScheme.secondary;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              icon,
              Text(
                title,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: onSurface,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    value,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontSize: fontSizeOverride,
                    ),
                  ),
                  Row(
                    children: [
                      SvgIcon.asset(isUp ? 'assets/up.svg' : 'assets/down.svg'),
                      Text(
                        '$percent%',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: isUp ? secondary : theme.colorScheme.error,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
