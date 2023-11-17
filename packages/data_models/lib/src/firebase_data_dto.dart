import 'package:freezed_annotation/freezed_annotation.dart';

import '../data_models.dart';

part 'firebase_data_dto.freezed.dart';
part 'firebase_data_dto.g.dart';

@freezed

///
class FirebaseDataDto with _$FirebaseDataDto {
  ///
  const factory FirebaseDataDto({
    required final List<Map<String, List<LineChartDataModel>>> lineChartData,
    required final List<BarChartDataModel> barChartData,
    required final List<double> pieChartData,
  }) = _FirebaseDataDto;

  ///
  factory FirebaseDataDto.fromJson(final Map<String, dynamic> json) =>
      _$FirebaseDataDtoFromJson(json);
}
