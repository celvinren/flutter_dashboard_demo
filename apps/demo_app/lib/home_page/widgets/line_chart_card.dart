import 'package:flutter/material.dart';

import '../../widgets/line_chart_widget/line_chart_widget.dart';
import '../home_page_desktop.dart';

///
class LineChartCard extends StatelessWidget {
  ///
  const LineChartCard();

  @override
  Widget build(final BuildContext context) => const Card(
        child: Padding(
          padding: EdgeInsets.all(bodyPaddingVertical),
          child: LineChartWidget(),
        ),
      );
}
