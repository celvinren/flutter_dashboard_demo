// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line_chart_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LineChartDataModel _$LineChartDataModelFromJson(Map<String, dynamic> json) {
  return _LineChartDataModel.fromJson(json);
}

/// @nodoc
mixin _$LineChartDataModel {
  int get index => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineChartDataModelCopyWith<LineChartDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineChartDataModelCopyWith<$Res> {
  factory $LineChartDataModelCopyWith(
          LineChartDataModel value, $Res Function(LineChartDataModel) then) =
      _$LineChartDataModelCopyWithImpl<$Res, LineChartDataModel>;
  @useResult
  $Res call({int index, double value});
}

/// @nodoc
class _$LineChartDataModelCopyWithImpl<$Res, $Val extends LineChartDataModel>
    implements $LineChartDataModelCopyWith<$Res> {
  _$LineChartDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LineChartDataModelImplCopyWith<$Res>
    implements $LineChartDataModelCopyWith<$Res> {
  factory _$$LineChartDataModelImplCopyWith(_$LineChartDataModelImpl value,
          $Res Function(_$LineChartDataModelImpl) then) =
      __$$LineChartDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, double value});
}

/// @nodoc
class __$$LineChartDataModelImplCopyWithImpl<$Res>
    extends _$LineChartDataModelCopyWithImpl<$Res, _$LineChartDataModelImpl>
    implements _$$LineChartDataModelImplCopyWith<$Res> {
  __$$LineChartDataModelImplCopyWithImpl(_$LineChartDataModelImpl _value,
      $Res Function(_$LineChartDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? value = null,
  }) {
    return _then(_$LineChartDataModelImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LineChartDataModelImpl implements _LineChartDataModel {
  const _$LineChartDataModelImpl({required this.index, required this.value});

  factory _$LineChartDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LineChartDataModelImplFromJson(json);

  @override
  final int index;
  @override
  final double value;

  @override
  String toString() {
    return 'LineChartDataModel(index: $index, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LineChartDataModelImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LineChartDataModelImplCopyWith<_$LineChartDataModelImpl> get copyWith =>
      __$$LineChartDataModelImplCopyWithImpl<_$LineChartDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LineChartDataModelImplToJson(
      this,
    );
  }
}

abstract class _LineChartDataModel implements LineChartDataModel {
  const factory _LineChartDataModel(
      {required final int index,
      required final double value}) = _$LineChartDataModelImpl;

  factory _LineChartDataModel.fromJson(Map<String, dynamic> json) =
      _$LineChartDataModelImpl.fromJson;

  @override
  int get index;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$LineChartDataModelImplCopyWith<_$LineChartDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
