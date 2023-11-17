// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_chart_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LineChartDataModelImpl _$$LineChartDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LineChartDataModelImpl(
      index: json['index'] as int,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$LineChartDataModelImplToJson(
        _$LineChartDataModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'value': instance.value,
    };
