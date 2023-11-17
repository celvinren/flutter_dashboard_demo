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
    );

Map<String, dynamic> _$$FirebaseDataDtoImplToJson(
        _$FirebaseDataDtoImpl instance) =>
    <String, dynamic>{
      'lineChartData': instance.lineChartData,
      'barChartData': instance.barChartData,
      'pieChartData': instance.pieChartData,
    };
