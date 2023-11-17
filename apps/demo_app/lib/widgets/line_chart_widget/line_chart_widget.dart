import 'package:data_models/data_models.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

///
class LineChartWidget extends StatelessWidget {
  ///
  const LineChartWidget({required this.dataList});

  static const List<Color> _colors = [
    Color(0xff4af699),
    Color(0xffaa4cfc),
    Color(0xff27b6fc),
  ];

  /// Data list for line chart.
  final List<Map<String, List<LineChartDataModel>>> dataList;

  @override
  Widget build(final BuildContext context) => LineChart(
        _sampleData1,
        swapAnimationDuration: const Duration(milliseconds: 250),
      );

  LineChartData get _sampleData1 => LineChartData(
        lineTouchData: _lineTouchData1,
        gridData: _gridData,
        titlesData: _titlesData1,
        borderData: _borderData,
        lineBarsData: _lineBarsData1,
        minX: 0,
        maxX: 12,
        maxY: 4,
        minY: 0,
      );

  LineTouchData get _lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get _titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: _bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: _leftTitles(),
        ),
      );

  List<LineChartBarData> get _lineBarsData1 => [
        for (int e = 0; e < dataList.length; e++)
          LineChartBarData(
            isCurved: true,
            color: _colors[e],
            barWidth: 4,
            isStrokeCapRound: true,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
            spots: [
              for (final i in dataList[e].values.first)
                FlSpot(
                  i.index.toDouble(),
                  i.value,
                ),
            ],
          ),
      ];

  Widget _leftTitleWidgets(
    final double value,
    final TitleMeta meta,
  ) {
    const style = TextStyle(
      color: Color(0xff75729e),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '1m';
        break;
      case 2:
        text = '2m';
        break;
      case 3:
        text = '3m';
        break;
      case 4:
        text = '5m';
        break;
      case 5:
        text = '6m';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles _leftTitles() => SideTitles(
        getTitlesWidget: _leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget _bottomTitleWidgets(final double value, final TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff72719b),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('Jan', style: style);
        break;
      case 3:
        text = const Text('Mar', style: style);
        break;
      case 5:
        text = const Text('May', style: style);
        break;
      case 7:
        text = const Text('Jul', style: style);
        break;
      case 9:
        text = const Text('Sep', style: style);
        break;
      case 11:
        text = const Text('Nov', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get _bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: _bottomTitleWidgets,
      );

  FlGridData get _gridData => FlGridData(show: false);

  FlBorderData get _borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Color(0xff4e4965), width: 4),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );
}
