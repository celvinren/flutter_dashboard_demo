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

  ///
  final double percent;

  final double _firstColumnWidth = 40;
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: _firstColumnWidth,
              child: icon,
            ),
            Text(
              title,
              style: theme.textTheme.bodySmall?.copyWith(
                color: (theme.colorScheme.onSurface as MaterialColor).shade200,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: _firstColumnWidth,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                Row(
                  children: [
                    SvgIcon.asset(isUp ? 'assets/up.svg' : 'assets/down.svg'),
                    Text(
                      '$percent%',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isUp
                            ? (theme.colorScheme.secondary as MaterialColor)
                                .shade300
                            : theme.colorScheme.error,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
