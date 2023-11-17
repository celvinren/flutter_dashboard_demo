import 'package:data_models/data_models.dart';
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
          child: BarChartSample2(
            data: [
              BarChartDataModel(
                index: 0,
                values: [5, 12],
              ),
              BarChartDataModel(
                index: 1,
                values: [16, 12],
              ),
              BarChartDataModel(
                index: 2,
                values: [18, 5],
              ),
              BarChartDataModel(
                index: 3,
                values: [20, 16],
              ),
              BarChartDataModel(
                index: 4,
                values: [17, 6],
              ),
              BarChartDataModel(
                index: 5,
                values: [19, 1.5],
              ),
              BarChartDataModel(
                index: 6,
                values: [10, 1.5],
              ),
            ],
          ),
        ),
      );
}
