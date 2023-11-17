import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_chart_data_model.freezed.dart';
part 'line_chart_data_model.g.dart';

@freezed
class LineChartDataModel with _$LineChartDataModel {
  const factory LineChartDataModel({
    required final int index,
    required final double value,
  }) = _LineChartDataModel;

  factory LineChartDataModel.fromJson(final Map<String, dynamic> json) =>
      _$LineChartDataModelFromJson(json);
}
