import 'package:flutter/material.dart';

import '../../line_chart/line_chart.dart';
import '../home_page_desktop.dart';

///
class LineChartCard extends StatelessWidget {
  ///
  const LineChartCard();

  @override
  Widget build(final BuildContext context) => const Card(
        child: Padding(
          padding: EdgeInsets.all(bodyPaddingVertical),
          child: LineChartSample1(),
        ),
      );
}
