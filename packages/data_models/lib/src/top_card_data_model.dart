import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_card_data_model.freezed.dart';
part 'top_card_data_model.g.dart';

@freezed

///
class TopCardDataModel with _$TopCardDataModel {
  ///
  const factory TopCardDataModel({
    required final int value,
    required final int previousValue,
  }) = _TopCardDataModel;

  ///
  factory TopCardDataModel.fromJson(final Map<String, dynamic> json) =>
      _$TopCardDataModelFromJson(json);
}
