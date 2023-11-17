import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data_repository/data_repository.dart';
import '../../data_repository/data_repository_state.dart';
import '../../widgets/pie_chart_widget/pie_chart_widget.dart';
import '../home_page_desktop.dart';

///
class PieChartCard extends StatelessWidget {
  ///
  const PieChartCard();

  @override
  Widget build(final BuildContext context) =>
      BlocSelector<DataRepository, DataRepositoryState, List<double>>(
        selector: (final state) => state.pieChartData ?? const <double>[],
        builder: (final context, final state) => Card(
          child: Padding(
            padding: const EdgeInsets.all(bodyPaddingVertical + 20),
            child: state.isNotEmpty
                ? PieChartWidget(
                    sections: state,
                  )
                : const SizedBox(),
          ),
        ),
      );
}
