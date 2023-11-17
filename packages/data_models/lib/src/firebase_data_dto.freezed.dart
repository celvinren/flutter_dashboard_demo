// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseDataDto _$FirebaseDataDtoFromJson(Map<String, dynamic> json) {
  return _FirebaseDataDto.fromJson(json);
}

/// @nodoc
mixin _$FirebaseDataDto {
  List<LineChartDataModel> get lineChartData =>
      throw _privateConstructorUsedError;
  List<BarChartDataModel> get barChartData =>
      throw _privateConstructorUsedError;
  List<int> get pieChartData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseDataDtoCopyWith<FirebaseDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseDataDtoCopyWith<$Res> {
  factory $FirebaseDataDtoCopyWith(
          FirebaseDataDto value, $Res Function(FirebaseDataDto) then) =
      _$FirebaseDataDtoCopyWithImpl<$Res, FirebaseDataDto>;
  @useResult
  $Res call(
      {List<LineChartDataModel> lineChartData,
      List<BarChartDataModel> barChartData,
      List<int> pieChartData});
}

/// @nodoc
class _$FirebaseDataDtoCopyWithImpl<$Res, $Val extends FirebaseDataDto>
    implements $FirebaseDataDtoCopyWith<$Res> {
  _$FirebaseDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineChartData = null,
    Object? barChartData = null,
    Object? pieChartData = null,
  }) {
    return _then(_value.copyWith(
      lineChartData: null == lineChartData
          ? _value.lineChartData
          : lineChartData // ignore: cast_nullable_to_non_nullable
              as List<LineChartDataModel>,
      barChartData: null == barChartData
          ? _value.barChartData
          : barChartData // ignore: cast_nullable_to_non_nullable
              as List<BarChartDataModel>,
      pieChartData: null == pieChartData
          ? _value.pieChartData
          : pieChartData // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseDataDtoImplCopyWith<$Res>
    implements $FirebaseDataDtoCopyWith<$Res> {
  factory _$$FirebaseDataDtoImplCopyWith(_$FirebaseDataDtoImpl value,
          $Res Function(_$FirebaseDataDtoImpl) then) =
      __$$FirebaseDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LineChartDataModel> lineChartData,
      List<BarChartDataModel> barChartData,
      List<int> pieChartData});
}

/// @nodoc
class __$$FirebaseDataDtoImplCopyWithImpl<$Res>
    extends _$FirebaseDataDtoCopyWithImpl<$Res, _$FirebaseDataDtoImpl>
    implements _$$FirebaseDataDtoImplCopyWith<$Res> {
  __$$FirebaseDataDtoImplCopyWithImpl(
      _$FirebaseDataDtoImpl _value, $Res Function(_$FirebaseDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineChartData = null,
    Object? barChartData = null,
    Object? pieChartData = null,
  }) {
    return _then(_$FirebaseDataDtoImpl(
      lineChartData: null == lineChartData
          ? _value._lineChartData
          : lineChartData // ignore: cast_nullable_to_non_nullable
              as List<LineChartDataModel>,
      barChartData: null == barChartData
          ? _value._barChartData
          : barChartData // ignore: cast_nullable_to_non_nullable
              as List<BarChartDataModel>,
      pieChartData: null == pieChartData
          ? _value._pieChartData
          : pieChartData // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseDataDtoImpl implements _FirebaseDataDto {
  const _$FirebaseDataDtoImpl(
      {required final List<LineChartDataModel> lineChartData,
      required final List<BarChartDataModel> barChartData,
      required final List<int> pieChartData})
      : _lineChartData = lineChartData,
        _barChartData = barChartData,
        _pieChartData = pieChartData;

  factory _$FirebaseDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseDataDtoImplFromJson(json);

  final List<LineChartDataModel> _lineChartData;
  @override
  List<LineChartDataModel> get lineChartData {
    if (_lineChartData is EqualUnmodifiableListView) return _lineChartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lineChartData);
  }

  final List<BarChartDataModel> _barChartData;
  @override
  List<BarChartDataModel> get barChartData {
    if (_barChartData is EqualUnmodifiableListView) return _barChartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barChartData);
  }

  final List<int> _pieChartData;
  @override
  List<int> get pieChartData {
    if (_pieChartData is EqualUnmodifiableListView) return _pieChartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pieChartData);
  }

  @override
  String toString() {
    return 'FirebaseDataDto(lineChartData: $lineChartData, barChartData: $barChartData, pieChartData: $pieChartData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseDataDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._lineChartData, _lineChartData) &&
            const DeepCollectionEquality()
                .equals(other._barChartData, _barChartData) &&
            const DeepCollectionEquality()
                .equals(other._pieChartData, _pieChartData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lineChartData),
      const DeepCollectionEquality().hash(_barChartData),
      const DeepCollectionEquality().hash(_pieChartData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseDataDtoImplCopyWith<_$FirebaseDataDtoImpl> get copyWith =>
      __$$FirebaseDataDtoImplCopyWithImpl<_$FirebaseDataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseDataDtoImplToJson(
      this,
    );
  }
}

abstract class _FirebaseDataDto implements FirebaseDataDto {
  const factory _FirebaseDataDto(
      {required final List<LineChartDataModel> lineChartData,
      required final List<BarChartDataModel> barChartData,
      required final List<int> pieChartData}) = _$FirebaseDataDtoImpl;

  factory _FirebaseDataDto.fromJson(Map<String, dynamic> json) =
      _$FirebaseDataDtoImpl.fromJson;

  @override
  List<LineChartDataModel> get lineChartData;
  @override
  List<BarChartDataModel> get barChartData;
  @override
  List<int> get pieChartData;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseDataDtoImplCopyWith<_$FirebaseDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
