// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirebaseDataDtoImpl _$$FirebaseDataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FirebaseDataDtoImpl(
      lineChartData: (json['lineChartData'] as List<dynamic>)
          .map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(
                    k,
                    (e as List<dynamic>)
                        .map((e) => LineChartDataModel.fromJson(
                            e as Map<String, dynamic>))
                        .toList()),
              ))
          .toList(),
      barChartData: (json['barChartData'] as List<dynamic>)
          .map((e) => BarChartDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pieChartData: (json['pieChartData'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      value1: TopCardDataModel.fromJson(json['value1'] as Map<String, dynamic>),
      value2: TopCardDataModel.fromJson(json['value2'] as Map<String, dynamic>),
      value3: TopCardDataModel.fromJson(json['value3'] as Map<String, dynamic>),
      value4: TopCardDataModel.fromJson(json['value4'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FirebaseDataDtoImplToJson(
        _$FirebaseDataDtoImpl instance) =>
    <String, dynamic>{
      'lineChartData': instance.lineChartData,
      'barChartData': instance.barChartData,
      'pieChartData': instance.pieChartData,
      'value1': instance.value1,
      'value2': instance.value2,
      'value3': instance.value3,
      'value4': instance.value4,
    };
