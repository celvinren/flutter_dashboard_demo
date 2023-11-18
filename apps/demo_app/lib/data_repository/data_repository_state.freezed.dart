// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_repository_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataRepositoryState {
  List<BarChartDataModel> get barChartData =>
      throw _privateConstructorUsedError;
  List<Map<String, List<LineChartDataModel>>> get lineChartData =>
      throw _privateConstructorUsedError;
  List<double> get pieChartData => throw _privateConstructorUsedError;
  TopCardDataModel get value1 => throw _privateConstructorUsedError;
  TopCardDataModel get value2 => throw _privateConstructorUsedError;
  TopCardDataModel get value3 => throw _privateConstructorUsedError;
  TopCardDataModel get value4 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BarChartDataModel> barChartData,
            List<Map<String, List<LineChartDataModel>>> lineChartData,
            List<double> pieChartData,
            TopCardDataModel value1,
            TopCardDataModel value2,
            TopCardDataModel value3,
            TopCardDataModel value4)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<BarChartDataModel> barChartData,
            List<Map<String, List<LineChartDataModel>>> lineChartData,
            List<double> pieChartData,
            TopCardDataModel value1,
            TopCardDataModel value2,
            TopCardDataModel value3,
            TopCardDataModel value4)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<BarChartDataModel> barChartData,
            List<Map<String, List<LineChartDataModel>>> lineChartData,
            List<double> pieChartData,
            TopCardDataModel value1,
            TopCardDataModel value2,
            TopCardDataModel value3,
            TopCardDataModel value4)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataRepositoryStateCopyWith<DataRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRepositoryStateCopyWith<$Res> {
  factory $DataRepositoryStateCopyWith(
          DataRepositoryState value, $Res Function(DataRepositoryState) then) =
      _$DataRepositoryStateCopyWithImpl<$Res, DataRepositoryState>;
  @useResult
  $Res call(
      {List<BarChartDataModel> barChartData,
      List<Map<String, List<LineChartDataModel>>> lineChartData,
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
class _$DataRepositoryStateCopyWithImpl<$Res, $Val extends DataRepositoryState>
    implements $DataRepositoryStateCopyWith<$Res> {
  _$DataRepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barChartData = null,
    Object? lineChartData = null,
    Object? pieChartData = null,
    Object? value1 = null,
    Object? value2 = null,
    Object? value3 = null,
    Object? value4 = null,
  }) {
    return _then(_value.copyWith(
      barChartData: null == barChartData
          ? _value.barChartData
          : barChartData // ignore: cast_nullable_to_non_nullable
              as List<BarChartDataModel>,
      lineChartData: null == lineChartData
          ? _value.lineChartData
          : lineChartData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, List<LineChartDataModel>>>,
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
abstract class _$$SuccessCopyWith<$Res>
    implements $DataRepositoryStateCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BarChartDataModel> barChartData,
      List<Map<String, List<LineChartDataModel>>> lineChartData,
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
class __$$SuccessCopyWithImpl<$Res>
    extends _$DataRepositoryStateCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barChartData = null,
    Object? lineChartData = null,
    Object? pieChartData = null,
    Object? value1 = null,
    Object? value2 = null,
    Object? value3 = null,
    Object? value4 = null,
  }) {
    return _then(_$Success(
      barChartData: null == barChartData
          ? _value._barChartData
          : barChartData // ignore: cast_nullable_to_non_nullable
              as List<BarChartDataModel>,
      lineChartData: null == lineChartData
          ? _value._lineChartData
          : lineChartData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, List<LineChartDataModel>>>,
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

class _$Success implements Success {
  const _$Success(
      {final List<BarChartDataModel> barChartData = const <BarChartDataModel>[],
      final List<Map<String, List<LineChartDataModel>>> lineChartData =
          const <Map<String, List<LineChartDataModel>>>[],
      final List<double> pieChartData = const <double>[],
      this.value1 = const TopCardDataModel(value: 0, previousValue: 1),
      this.value2 = const TopCardDataModel(value: 0, previousValue: 1),
      this.value3 = const TopCardDataModel(value: 0, previousValue: 1),
      this.value4 = const TopCardDataModel(value: 0, previousValue: 1)})
      : _barChartData = barChartData,
        _lineChartData = lineChartData,
        _pieChartData = pieChartData;

  final List<BarChartDataModel> _barChartData;
  @override
  @JsonKey()
  List<BarChartDataModel> get barChartData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barChartData);
  }

  final List<Map<String, List<LineChartDataModel>>> _lineChartData;
  @override
  @JsonKey()
  List<Map<String, List<LineChartDataModel>>> get lineChartData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lineChartData);
  }

  final List<double> _pieChartData;
  @override
  @JsonKey()
  List<double> get pieChartData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pieChartData);
  }

  @override
  @JsonKey()
  final TopCardDataModel value1;
  @override
  @JsonKey()
  final TopCardDataModel value2;
  @override
  @JsonKey()
  final TopCardDataModel value3;
  @override
  @JsonKey()
  final TopCardDataModel value4;

  @override
  String toString() {
    return 'DataRepositoryState.success(barChartData: $barChartData, lineChartData: $lineChartData, pieChartData: $pieChartData, value1: $value1, value2: $value2, value3: $value3, value4: $value4)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            const DeepCollectionEquality()
                .equals(other._barChartData, _barChartData) &&
            const DeepCollectionEquality()
                .equals(other._lineChartData, _lineChartData) &&
            const DeepCollectionEquality()
                .equals(other._pieChartData, _pieChartData) &&
            (identical(other.value1, value1) || other.value1 == value1) &&
            (identical(other.value2, value2) || other.value2 == value2) &&
            (identical(other.value3, value3) || other.value3 == value3) &&
            (identical(other.value4, value4) || other.value4 == value4));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_barChartData),
      const DeepCollectionEquality().hash(_lineChartData),
      const DeepCollectionEquality().hash(_pieChartData),
      value1,
      value2,
      value3,
      value4);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BarChartDataModel> barChartData,
            List<Map<String, List<LineChartDataModel>>> lineChartData,
            List<double> pieChartData,
            TopCardDataModel value1,
            TopCardDataModel value2,
            TopCardDataModel value3,
            TopCardDataModel value4)
        success,
  }) {
    return success(barChartData, lineChartData, pieChartData, value1, value2,
        value3, value4);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<BarChartDataModel> barChartData,
            List<Map<String, List<LineChartDataModel>>> lineChartData,
            List<double> pieChartData,
            TopCardDataModel value1,
            TopCardDataModel value2,
            TopCardDataModel value3,
            TopCardDataModel value4)?
        success,
  }) {
    return success?.call(barChartData, lineChartData, pieChartData, value1,
        value2, value3, value4);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<BarChartDataModel> barChartData,
            List<Map<String, List<LineChartDataModel>>> lineChartData,
            List<double> pieChartData,
            TopCardDataModel value1,
            TopCardDataModel value2,
            TopCardDataModel value3,
            TopCardDataModel value4)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(barChartData, lineChartData, pieChartData, value1, value2,
          value3, value4);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements DataRepositoryState {
  const factory Success(
      {final List<BarChartDataModel> barChartData,
      final List<Map<String, List<LineChartDataModel>>> lineChartData,
      final List<double> pieChartData,
      final TopCardDataModel value1,
      final TopCardDataModel value2,
      final TopCardDataModel value3,
      final TopCardDataModel value4}) = _$Success;

  @override
  List<BarChartDataModel> get barChartData;
  @override
  List<Map<String, List<LineChartDataModel>>> get lineChartData;
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
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}
