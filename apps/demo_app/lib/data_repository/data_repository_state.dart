import 'package:data_models/data_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_repository_state.freezed.dart';

@freezed

///
class DataRepositoryState with _$DataRepositoryState {
  ///
  const factory DataRepositoryState.success({
    @Default(<BarChartDataModel>[]) final List<BarChartDataModel>? barChartData,
    @Default(<Map<String, List<LineChartDataModel>>>[])
    final List<Map<String, List<LineChartDataModel>>>? lineChartData,
    @Default(<double>[]) final List<double>? pieChartData,
  }) = Success;
}
