// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bar_chart_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BarChartDataModelImpl _$$BarChartDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BarChartDataModelImpl(
      index: json['index'] as int,
      values: (json['values'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$BarChartDataModelImplToJson(
        _$BarChartDataModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'values': instance.values,
    };
