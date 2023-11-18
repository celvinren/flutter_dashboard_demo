import 'package:data_models/data_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data_repository/data_repository.dart';
import '../../data_repository/data_repository_state.dart';
import '../../widgets/line_chart_widget/line_chart_widget.dart';
import '../home_page_desktop.dart';

///
class LineChartCard extends StatelessWidget {
  ///
  const LineChartCard();

  @override
  Widget build(final BuildContext context) => BlocSelector<DataRepository,
          DataRepositoryState, List<Map<String, List<LineChartDataModel>>>>(
        selector: (final state) => state.lineChartData,
        builder: (final context, final state) => Card(
          child: Padding(
            padding: const EdgeInsets.all(bodyPaddingVertical),
            child: state.isNotEmpty
                ? LineChartWidget(
                    dataList: state,
                  )
                : const SizedBox(),
          ),
        ),
      );
}
