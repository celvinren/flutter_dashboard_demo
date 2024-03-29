import 'package:data_models/data_models.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

///
class BarChartSample2 extends HookWidget {
  ///
  const BarChartSample2({required this.data});

  static const _colors = [
    Color(0xff53fdd7),
    Color(0xffff5182),
    Color(0xffffcd3c),
  ];
  static const _width = 12.0;

  final List<BarChartDataModel> data;

  @override
  Widget build(final BuildContext context) {
    final touchedGroupIndex = useState(-1);

    final rawBarGroups =
        data.map((final e) => _makeGroupData(e.index, e.values)).toList();
    final showingBarGroups = useState(
      data.map((final e) => _makeGroupData(e.index, e.values)).toList(),
    );

    useEffect(
      () {
        showingBarGroups.value =
            data.map((final e) => _makeGroupData(e.index, e.values)).toList();

        return null;
      },
      <Object>[showingBarGroups.value],
    );

    void touchCallBack(
      final FlTouchEvent event,
      final BarTouchResponse? response,
    ) {
      if (response == null || response.spot == null) {
        touchedGroupIndex.value = -1;
        showingBarGroups.value = rawBarGroups;

        return;
      }

      touchedGroupIndex.value = response.spot?.touchedBarGroupIndex ?? 0;

      if (!event.isInterestedForInteractions) {
        touchedGroupIndex.value = -1;
        showingBarGroups.value = rawBarGroups;

        return;
      }
      showingBarGroups.value = rawBarGroups;
      if (touchedGroupIndex.value != -1) {
        var sum = 0.0;
        for (final rod
            in showingBarGroups.value[touchedGroupIndex.value].barRods) {
          sum += rod.toY;
        }
        final avg = sum /
            showingBarGroups.value[touchedGroupIndex.value].barRods.length;

        showingBarGroups.value[touchedGroupIndex.value] =
            showingBarGroups.value[touchedGroupIndex.value].copyWith(
          barRods: showingBarGroups.value[touchedGroupIndex.value].barRods
              .map((final rod) => rod.copyWith(toY: avg))
              .toList(),
        );
      }
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: BarChart(
        BarChartData(
          maxY: 20,
          barTouchData: BarTouchData(
            touchTooltipData: BarTouchTooltipData(
              tooltipBgColor: Colors.grey,
              getTooltipItem: (final a, final b, final c, final d) => null,
            ),
            touchCallback: touchCallBack,
          ),
          titlesData: FlTitlesData(
            show: true,
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: _bottomTitles,
                reservedSize: 42,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 28,
                interval: 1,
                getTitlesWidget: _leftTitles,
              ),
            ),
          ),
          borderData: FlBorderData(
            show: false,
          ),
          barGroups: showingBarGroups.value,
          gridData: FlGridData(show: false),
        ),
      ),
    );
  }

  Widget _leftTitles(final double value, final TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    if (value == 0) {
      text = '1K';
    } else if (value == 10) {
      text = '5K';
    } else if (value == 19) {
      text = '10K';
    } else {
      return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(text, style: style),
    );
  }

  Widget _bottomTitles(final double value, final TitleMeta meta) {
    final titles = <String>['Mn', 'Te', 'Wd', 'Tu', 'Fr', 'St', 'Su'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      // Margin top.
      space: 16,
      child: text,
    );
  }

  BarChartGroupData _makeGroupData(
    final int x,
    final List<double> dataList,
  ) =>
      BarChartGroupData(
        barsSpace: 4,
        x: x,
        barRods: [
          for (int i = 0; i < dataList.length; i++)
            BarChartRodData(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(3),
                topRight: Radius.circular(3),
              ),
              toY: dataList[i],
              color: _colors[i],
              width: _width,
            ),
        ],
      );
}
