import 'package:flutter/material.dart';

import '../../widgets/pie_chart_widget/pie_chart_widget.dart';
import '../home_page_desktop.dart';

///
class PieChartCard extends StatelessWidget {
  ///
  const PieChartCard();

  @override
  Widget build(final BuildContext context) => const Card(
        child: Padding(
          padding: EdgeInsets.all(bodyPaddingVertical + 20),
          child: PieChartWidget(
            sections: [40, 30, 15, 15, 15],
          ),
        ),
      );
}
