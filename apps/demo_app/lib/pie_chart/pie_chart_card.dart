import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSample2 extends StatefulWidget {
  const PieChartSample2({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(final BuildContext context) => AspectRatio(
        aspectRatio: 1,
        child: LayoutBuilder(
          builder: (final context, final constraints) => PieChart(
            PieChartData(
              pieTouchData: PieTouchData(
                touchCallback: (final event, final pieTouchResponse) {
                  setState(() {
                    if (!event.isInterestedForInteractions ||
                        pieTouchResponse == null ||
                        pieTouchResponse.touchedSection == null) {
                      touchedIndex = -1;
                      return;
                    }
                    touchedIndex =
                        pieTouchResponse.touchedSection!.touchedSectionIndex;
                  });
                },
              ),
              borderData: FlBorderData(
                show: false,
              ),
              sectionsSpace: 0,
              centerSpaceRadius: (constraints.maxWidth - 60) / 2,
              sections: showingSections(),
            ),
          ),
        ),
      );

  List<PieChartSectionData> showingSections() => List.generate(5, (final i) {
        final isTouched = i == touchedIndex;
        final fontSize = isTouched ? 25.0 : 16.0;
        final radius = isTouched ? 60.0 : 20.0;
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
      });
}

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor = const Color(0xff505050),
  });
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  @override
  Widget build(final BuildContext context) => Row(
        children: <Widget>[
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
              color: color,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          )
        ],
      );
}
