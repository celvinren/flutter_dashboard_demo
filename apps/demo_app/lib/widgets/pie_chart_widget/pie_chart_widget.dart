import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

///
class PieChartWidget extends HookWidget {
  ///
  const PieChartWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final touchedIndex = useState(-1);

    return AspectRatio(
      aspectRatio: 1,
      child: LayoutBuilder(
        builder: (final context, final constraints) => PieChart(
          PieChartData(
            pieTouchData: PieTouchData(
              touchCallback: (final event, final pieTouchResponse) {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex.value = -1;
                  return;
                }
                touchedIndex.value =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              },
            ),
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 0,
            centerSpaceRadius:
                ([constraints.maxHeight, constraints.maxWidth].reduce(min) -
                        60) /
                    2,
            sections: _showingSections(touchedIndex.value),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> _showingSections(final int touchedIndex) =>
      List.generate(
        5,
        (final i) {
          final isTouched = i == touchedIndex;
          final fontSize = isTouched ? 25.0 : 16.0;
          final radius = isTouched ? 30.0 : 20.0;
          switch (i) {
            case 0:
              return PieChartSectionData(
                color: const Color(0xff956AFF),
                value: 40,
                showTitle: false,
                title: '40%',
                radius: radius,
                titleStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff),
                ),
              );
            case 1:
              return PieChartSectionData(
                color: const Color(0xff007AFF),
                value: 30,
                showTitle: false,
                title: '30%',
                radius: radius,
                titleStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff),
                ),
              );
            case 2:
              return PieChartSectionData(
                color: const Color(0xff02CACD),
                value: 15,
                showTitle: false,
                title: '15%',
                radius: radius,
                titleStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff),
                ),
              );
            case 3:
              return PieChartSectionData(
                color: const Color(0xffFDAD15),
                value: 15,
                showTitle: false,
                title: '15%',
                radius: radius,
                titleStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff),
                ),
              );
            case 4:
              return PieChartSectionData(
                color: const Color(0xff2AC670),
                value: 15,
                showTitle: false,
                title: '15%',
                radius: radius,
                titleStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff),
                ),
              );
            default:
              throw Error();
          }
        },
      );
}
