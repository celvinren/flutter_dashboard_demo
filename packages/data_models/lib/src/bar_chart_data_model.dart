import 'package:freezed_annotation/freezed_annotation.dart';

part 'bar_chart_data_model.freezed.dart';
part 'bar_chart_data_model.g.dart';

@freezed

///
class BarChartDataModel with _$BarChartDataModel {
  ///
  const factory BarChartDataModel({
    required final int index,
    required final List<double> values,
  }) = _BarChartDataModel;

  ///
  factory BarChartDataModel.fromJson(final Map<String, dynamic> json) =>
      _$BarChartDataModelFromJson(json);
}
