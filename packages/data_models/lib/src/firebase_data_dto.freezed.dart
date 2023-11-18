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
  List<Map<String, List<LineChartDataModel>>> get lineChartData =>
      throw _privateConstructorUsedError;
  List<BarChartDataModel> get barChartData =>
      throw _privateConstructorUsedError;
  List<double> get pieChartData => throw _privateConstructorUsedError;
  TopCardDataModel get value1 => throw _privateConstructorUsedError;
  TopCardDataModel get value2 => throw _privateConstructorUsedError;
  TopCardDataModel get value3 => throw _privateConstructorUsedError;
  TopCardDataModel get value4 => throw _privateConstructorUsedError;

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
      {List<Map<String, List<LineChartDataModel>>> lineChartData,
      List<BarChartDataModel> barChartData,
      List<double> pieChartData,
      TopCardDataModel value1,
      TopCardDataModel value2,
      TopCardDataModel value3,
      TopCardDataModel value4});

  $TopCardDataModelCopyWith<$Res> get value1;
  $TopCardDataModelCopyWith<$Res> get value2;
  $TopCardDataModelCopyWith<$Res> get value3;
  $TopCardDataModelCopyWith<$Res> get value4;
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
    Object? value1 = null,
    Object? value2 = null,
    Object? value3 = null,
    Object? value4 = null,
  }) {
    return _then(_value.copyWith(
      lineChartData: null == lineChartData
          ? _value.lineChartData
          : lineChartData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, List<LineChartDataModel>>>,
      barChartData: null == barChartData
          ? _value.barChartData
          : barChartData // ignore: cast_nullable_to_non_nullable
              as List<BarChartDataModel>,
      pieChartData: null == pieChartData
          ? _value.pieChartData
          : pieChartData // ignore: cast_nullable_to_non_nullable
              as List<double>,
      value1: null == value1
          ? _value.value1
          : value1 // ignore: cast_nullable_to_non_nullable
              as TopCardDataModel,
      value2: null == value2
          ? _value.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as TopCardDataModel,
      value3: null == value3
          ? _value.value3
          : value3 // ignore: cast_nullable_to_non_nullable
              as TopCardDataModel,
      value4: null == value4
          ? _value.value4
          : value4 // ignore: cast_nullable_to_non_nullable
              as TopCardDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopCardDataModelCopyWith<$Res> get value1 {
    return $TopCardDataModelCopyWith<$Res>(_value.value1, (value) {
      return _then(_value.copyWith(value1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TopCardDataModelCopyWith<$Res> get value2 {
    return $TopCardDataModelCopyWith<$Res>(_value.value2, (value) {
      return _then(_value.copyWith(value2: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TopCardDataModelCopyWith<$Res> get value3 {
    return $TopCardDataModelCopyWith<$Res>(_value.value3, (value) {
      return _then(_value.copyWith(value3: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TopCardDataModelCopyWith<$Res> get value4 {
    return $TopCardDataModelCopyWith<$Res>(_value.value4, (value) {
      return _then(_value.copyWith(value4: value) as $Val);
    });
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
      {List<Map<String, List<LineChartDataModel>>> lineChartData,
      List<BarChartDataModel> barChartData,
      List<double> pieChartData,
      TopCardDataModel value1,
      TopCardDataModel value2,
      TopCardDataModel value3,
      TopCardDataModel value4});

  @override
  $TopCardDataModelCopyWith<$Res> get value1;
  @override
  $TopCardDataModelCopyWith<$Res> get value2;
  @override
  $TopCardDataModelCopyWith<$Res> get value3;
  @override
  $TopCardDataModelCopyWith<$Res> get value4;
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
    Object? value1 = null,
    Object? value2 = null,
    Object? value3 = null,
    Object? value4 = null,
  }) {
    return _then(_$FirebaseDataDtoImpl(
      lineChartData: null == lineChartData
          ? _value._lineChartData
          : lineChartData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, List<LineChartDataModel>>>,
      barChartData: null == barChartData
          ? _value._barChartData
          : barChartData // ignore: cast_nullable_to_non_nullable
              as List<BarChartDataModel>,
      pieChartData: null == pieChartData
          ? _value._pieChartData
          : pieChartData // ignore: cast_nullable_to_non_nullable
              as List<double>,
      value1: null == value1
          ? _value.value1
          : value1 // ignore: cast_nullable_to_non_nullable
              as TopCardDataModel,
      value2: null == value2
          ? _value.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as TopCardDataModel,
      value3: null == value3
          ? _value.value3
          : value3 // ignore: cast_nullable_to_non_nullable
              as TopCardDataModel,
      value4: null == value4
          ? _value.value4
          : value4 // ignore: cast_nullable_to_non_nullable
              as TopCardDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseDataDtoImpl implements _FirebaseDataDto {
  const _$FirebaseDataDtoImpl(
      {required final List<Map<String, List<LineChartDataModel>>> lineChartData,
      required final List<BarChartDataModel> barChartData,
      required final List<double> pieChartData,
      required this.value1,
      required this.value2,
      required this.value3,
      required this.value4})
      : _lineChartData = lineChartData,
        _barChartData = barChartData,
        _pieChartData = pieChartData;

  factory _$FirebaseDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseDataDtoImplFromJson(json);

  final List<Map<String, List<LineChartDataModel>>> _lineChartData;
  @override
  List<Map<String, List<LineChartDataModel>>> get lineChartData {
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

  final List<double> _pieChartData;
  @override
  List<double> get pieChartData {
    if (_pieChartData is EqualUnmodifiableListView) return _pieChartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pieChartData);
  }

  @override
  final TopCardDataModel value1;
  @override
  final TopCardDataModel value2;
  @override
  final TopCardDataModel value3;
  @override
  final TopCardDataModel value4;

  @override
  String toString() {
    return 'FirebaseDataDto(lineChartData: $lineChartData, barChartData: $barChartData, pieChartData: $pieChartData, value1: $value1, value2: $value2, value3: $value3, value4: $value4)';
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
                .equals(other._pieChartData, _pieChartData) &&
            (identical(other.value1, value1) || other.value1 == value1) &&
            (identical(other.value2, value2) || other.value2 == value2) &&
            (identical(other.value3, value3) || other.value3 == value3) &&
            (identical(other.value4, value4) || other.value4 == value4));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lineChartData),
      const DeepCollectionEquality().hash(_barChartData),
      const DeepCollectionEquality().hash(_pieChartData),
      value1,
      value2,
      value3,
      value4);

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
      {required final List<Map<String, List<LineChartDataModel>>> lineChartData,
      required final List<BarChartDataModel> barChartData,
      required final List<double> pieChartData,
      required final TopCardDataModel value1,
      required final TopCardDataModel value2,
      required final TopCardDataModel value3,
      required final TopCardDataModel value4}) = _$FirebaseDataDtoImpl;

  factory _FirebaseDataDto.fromJson(Map<String, dynamic> json) =
      _$FirebaseDataDtoImpl.fromJson;

  @override
  List<Map<String, List<LineChartDataModel>>> get lineChartData;
  @override
  List<BarChartDataModel> get barChartData;
  @override
  List<double> get pieChartData;
  @override
  TopCardDataModel get value1;
  @override
  TopCardDataModel get value2;
  @override
  TopCardDataModel get value3;
  @override
  TopCardDataModel get value4;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseDataDtoImplCopyWith<_$FirebaseDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
