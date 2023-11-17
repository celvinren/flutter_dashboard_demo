import 'package:data_models/data_models.dart';
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
          child: LineChartWidget(
            dataList: [
              [
                LineChartDataModel(index: 1, value: 1),
                LineChartDataModel(index: 3, value: 1.5),
                LineChartDataModel(index: 5, value: 1.4),
                LineChartDataModel(index: 7, value: 3.4),
                LineChartDataModel(index: 9, value: 2.2),
                LineChartDataModel(index: 11, value: 1.8),
                LineChartDataModel(index: 12, value: 2.2),
              ],
              [
                LineChartDataModel(index: 1, value: 1),
                LineChartDataModel(index: 3, value: 2.8),
                LineChartDataModel(index: 5, value: 1.2),
                LineChartDataModel(index: 7, value: 2.8),
                LineChartDataModel(index: 9, value: 2.6),
                LineChartDataModel(index: 11, value: 3.9),
                LineChartDataModel(index: 12, value: 1.7),
              ],
              [
                LineChartDataModel(index: 1, value: 2.8),
                LineChartDataModel(index: 3, value: 1.9),
                LineChartDataModel(index: 5, value: 3),
                LineChartDataModel(index: 7, value: 1.3),
                LineChartDataModel(index: 9, value: 2.5),
                LineChartDataModel(index: 11, value: 1.3),
                LineChartDataModel(index: 12, value: 3.9),
              ],
            ],
          ),
        ),
      );
}
