import 'package:data_models/data_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data_repository/data_repository.dart';
import '../../data_repository/data_repository_state.dart';
import '../../widgets/bar_chart/bar_chart.dart';
import '../home_page_desktop.dart';

///
class BarChartCard extends StatelessWidget {
  ///
  const BarChartCard();

  @override
  Widget build(final BuildContext context) => BlocSelector<DataRepository,
          DataRepositoryState, List<BarChartDataModel>>(
        selector: (final state) => state.barChartData ?? [],
        builder: (final context, final state) => state.isNotEmpty
            ? Card(
                child: Padding(
                  padding: const EdgeInsets.all(bodyPaddingVertical),
                  child: BarChartSample2(
                    data: state,
                  ),
                ),
              )
            : const SizedBox(),
      );
}
