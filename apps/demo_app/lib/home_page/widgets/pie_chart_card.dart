import 'package:flutter/material.dart';

import '../../pie_chart/pie_chart.dart';
import '../home_page_desktop.dart';

///
class PieChartCard extends StatelessWidget {
  ///
  const PieChartCard();

  @override
  Widget build(final BuildContext context) => const Card(
        child: Padding(
          padding: EdgeInsets.all(bodyPaddingVertical),
          child: PieChartSample2(),
        ),
      );
}
