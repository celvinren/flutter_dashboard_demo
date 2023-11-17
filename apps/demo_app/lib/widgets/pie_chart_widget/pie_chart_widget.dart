import 'dart:math';

import 'package:app_blocs/app_blocs.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

///
class PieChartWidget extends HookWidget {
  ///
  const PieChartWidget({required this.sections, super.key});

  static const _colors = [
    Color(0xff956AFF),
    Color(0xff007AFF),
    Color(0xff02CACD),
    Color(0xffFDAD15),
    Color(0xff2AC670),
  ];

  ///
  final List<double> sections;

  @override
  Widget build(final BuildContext context) {
    final touchedIndex = useState(-1);
    final theme = Theme.of(context);
    void touchCallback(
      final FlTouchEvent event,
      final PieTouchResponse? response,
    ) {
      if (!event.isInterestedForInteractions ||
          response == null ||
          response.touchedSection == null) {
        touchedIndex.value = -1;
        return;
      }
      touchedIndex.value = response.touchedSection!.touchedSectionIndex;
    }

    return AspectRatio(
      aspectRatio: 1,
      child: LayoutBuilder(
        builder: (final context, final constraints) =>
            BlocSelector<ThemeCubit, ThemeState, bool>(
          selector: (final state) => state.isDarkMode,
          builder: (final context, final isDarkMode) => PieChart(
            PieChartData(
              pieTouchData: PieTouchData(
                touchCallback: touchCallback,
              ),
              borderData: FlBorderData(
                show: false,
              ),
              sectionsSpace: 0,
              centerSpaceRadius:
                  ([constraints.maxHeight, constraints.maxWidth].reduce(min) -
                          60) /
                      2,
              sections: _showingSections(
                touchedIndex.value,
                isDarkMode
                    ? const Color(0xffffffff)
                    : (theme.colorScheme.onSurface is MaterialColor
                        ? (theme.colorScheme.onSurface as MaterialColor).shade50
                        : theme.colorScheme.onSurface),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> _showingSections(
    final int touchedIndex,
    final Color? titleColor,
  ) =>
      List.generate(
        5,
        (final i) => PieChartSectionData(
          color: _colors[i],
          value: sections[i],
          showTitle: true,
          title: '\$${sections[i]}k',
          titlePositionPercentageOffset: 2,
          radius: i == touchedIndex ? 30.0 : 20.0,
          titleStyle: TextStyle(
            fontSize: i == touchedIndex ? 25.0 : 16.0,
            fontWeight: FontWeight.bold,
            color: titleColor,
          ),
        ),
      );
}
