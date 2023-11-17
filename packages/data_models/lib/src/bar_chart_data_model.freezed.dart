// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bar_chart_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BarChartDataModel _$BarChartDataModelFromJson(Map<String, dynamic> json) {
  return _BarChartDataModel.fromJson(json);
}

/// @nodoc
mixin _$BarChartDataModel {
  int get index => throw _privateConstructorUsedError;
  List<double> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarChartDataModelCopyWith<BarChartDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarChartDataModelCopyWith<$Res> {
  factory $BarChartDataModelCopyWith(
          BarChartDataModel value, $Res Function(BarChartDataModel) then) =
      _$BarChartDataModelCopyWithImpl<$Res, BarChartDataModel>;
  @useResult
  $Res call({int index, List<double> values});
}

/// @nodoc
class _$BarChartDataModelCopyWithImpl<$Res, $Val extends BarChartDataModel>
    implements $BarChartDataModelCopyWith<$Res> {
  _$BarChartDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarChartDataModelImplCopyWith<$Res>
    implements $BarChartDataModelCopyWith<$Res> {
  factory _$$BarChartDataModelImplCopyWith(_$BarChartDataModelImpl value,
          $Res Function(_$BarChartDataModelImpl) then) =
      __$$BarChartDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, List<double> values});
}

/// @nodoc
class __$$BarChartDataModelImplCopyWithImpl<$Res>
    extends _$BarChartDataModelCopyWithImpl<$Res, _$BarChartDataModelImpl>
    implements _$$BarChartDataModelImplCopyWith<$Res> {
  __$$BarChartDataModelImplCopyWithImpl(_$BarChartDataModelImpl _value,
      $Res Function(_$BarChartDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? values = null,
  }) {
    return _then(_$BarChartDataModelImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarChartDataModelImpl implements _BarChartDataModel {
  const _$BarChartDataModelImpl(
      {required this.index, required final List<double> values})
      : _values = values;

  factory _$BarChartDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarChartDataModelImplFromJson(json);

  @override
  final int index;
  final List<double> _values;
  @override
  List<double> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'BarChartDataModel(index: $index, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarChartDataModelImpl &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarChartDataModelImplCopyWith<_$BarChartDataModelImpl> get copyWith =>
      __$$BarChartDataModelImplCopyWithImpl<_$BarChartDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarChartDataModelImplToJson(
      this,
    );
  }
}

abstract class _BarChartDataModel implements BarChartDataModel {
  const factory _BarChartDataModel(
      {required final int index,
      required final List<double> values}) = _$BarChartDataModelImpl;

  factory _BarChartDataModel.fromJson(Map<String, dynamic> json) =
      _$BarChartDataModelImpl.fromJson;

  @override
  int get index;
  @override
  List<double> get values;
  @override
  @JsonKey(ignore: true)
  _$$BarChartDataModelImplCopyWith<_$BarChartDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
