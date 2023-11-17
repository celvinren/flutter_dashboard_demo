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
  List<BarChartDataModel>? get barChartData =>
      throw _privateConstructorUsedError;
  List<Map<String, List<LineChartDataModel>>>? get lineChartData =>
      throw _privateConstructorUsedError;
  List<double>? get pieChartData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BarChartDataModel>? barChartData,
            List<Map<String, List<LineChartDataModel>>>? lineChartData,
            List<double>? pieChartData)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<BarChartDataModel>? barChartData,
            List<Map<String, List<LineChartDataModel>>>? lineChartData,
            List<double>? pieChartData)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<BarChartDataModel>? barChartData,
            List<Map<String, List<LineChartDataModel>>>? lineChartData,
            List<double>? pieChartData)?
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
      {List<BarChartDataModel>? barChartData,
      List<Map<String, List<LineChartDataModel>>>? lineChartData,
      List<double>? pieChartData});
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
    Object? barChartData = freezed,
    Object? lineChartData = freezed,
    Object? pieChartData = freezed,
  }) {
    return _then(_value.copyWith(
      barChartData: freezed == barChartData
          ? _value.barChartData
          : barChartData // ignore: cast_nullable_to_non_nullable
              as List<BarChartDataModel>?,
      lineChartData: freezed == lineChartData
          ? _value.lineChartData
          : lineChartData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, List<LineChartDataModel>>>?,
      pieChartData: freezed == pieChartData
          ? _value.pieChartData
          : pieChartData // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
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
      {List<BarChartDataModel>? barChartData,
      List<Map<String, List<LineChartDataModel>>>? lineChartData,
      List<double>? pieChartData});
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
    Object? barChartData = freezed,
    Object? lineChartData = freezed,
    Object? pieChartData = freezed,
  }) {
    return _then(_$Success(
      barChartData: freezed == barChartData
          ? _value._barChartData
          : barChartData // ignore: cast_nullable_to_non_nullable
              as List<BarChartDataModel>?,
      lineChartData: freezed == lineChartData
          ? _value._lineChartData
          : lineChartData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, List<LineChartDataModel>>>?,
      pieChartData: freezed == pieChartData
          ? _value._pieChartData
          : pieChartData // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success(
      {final List<BarChartDataModel>? barChartData =
          const <BarChartDataModel>[],
      final List<Map<String, List<LineChartDataModel>>>? lineChartData =
          const <Map<String, List<LineChartDataModel>>>[],
      final List<double>? pieChartData = const <double>[]})
      : _barChartData = barChartData,
        _lineChartData = lineChartData,
        _pieChartData = pieChartData;

  final List<BarChartDataModel>? _barChartData;
  @override
  @JsonKey()
  List<BarChartDataModel>? get barChartData {
    final value = _barChartData;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, List<LineChartDataModel>>>? _lineChartData;
  @override
  @JsonKey()
  List<Map<String, List<LineChartDataModel>>>? get lineChartData {
    final value = _lineChartData;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _pieChartData;
  @override
  @JsonKey()
  List<double>? get pieChartData {
    final value = _pieChartData;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataRepositoryState.success(barChartData: $barChartData, lineChartData: $lineChartData, pieChartData: $pieChartData)';
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
                .equals(other._pieChartData, _pieChartData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_barChartData),
      const DeepCollectionEquality().hash(_lineChartData),
      const DeepCollectionEquality().hash(_pieChartData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BarChartDataModel>? barChartData,
            List<Map<String, List<LineChartDataModel>>>? lineChartData,
            List<double>? pieChartData)
        success,
  }) {
    return success(barChartData, lineChartData, pieChartData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<BarChartDataModel>? barChartData,
            List<Map<String, List<LineChartDataModel>>>? lineChartData,
            List<double>? pieChartData)?
        success,
  }) {
    return success?.call(barChartData, lineChartData, pieChartData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<BarChartDataModel>? barChartData,
            List<Map<String, List<LineChartDataModel>>>? lineChartData,
            List<double>? pieChartData)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(barChartData, lineChartData, pieChartData);
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
      {final List<BarChartDataModel>? barChartData,
      final List<Map<String, List<LineChartDataModel>>>? lineChartData,
      final List<double>? pieChartData}) = _$Success;

  @override
  List<BarChartDataModel>? get barChartData;
  @override
  List<Map<String, List<LineChartDataModel>>>? get lineChartData;
  @override
  List<double>? get pieChartData;
  @override
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}
