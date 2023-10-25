import 'package:flutter/material.dart';

import '../../widgets/bar_chart/bar_chart.dart';
import '../home_page_desktop.dart';

///
class BarChartCard extends StatelessWidget {
  ///
  const BarChartCard();

  @override
  Widget build(final BuildContext context) => const Card(
        child: Padding(
          padding: EdgeInsets.all(bodyPaddingVertical),
          child: BarChartSample2(),
        ),
      );
}
