// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_card_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopCardDataModel _$TopCardDataModelFromJson(Map<String, dynamic> json) {
  return _TopCardDataModel.fromJson(json);
}

/// @nodoc
mixin _$TopCardDataModel {
  int get value => throw _privateConstructorUsedError;
  int get previousValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopCardDataModelCopyWith<TopCardDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCardDataModelCopyWith<$Res> {
  factory $TopCardDataModelCopyWith(
          TopCardDataModel value, $Res Function(TopCardDataModel) then) =
      _$TopCardDataModelCopyWithImpl<$Res, TopCardDataModel>;
  @useResult
  $Res call({int value, int previousValue});
}

/// @nodoc
class _$TopCardDataModelCopyWithImpl<$Res, $Val extends TopCardDataModel>
    implements $TopCardDataModelCopyWith<$Res> {
  _$TopCardDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? previousValue = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      previousValue: null == previousValue
          ? _value.previousValue
          : previousValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopCardDataModelImplCopyWith<$Res>
    implements $TopCardDataModelCopyWith<$Res> {
  factory _$$TopCardDataModelImplCopyWith(_$TopCardDataModelImpl value,
          $Res Function(_$TopCardDataModelImpl) then) =
      __$$TopCardDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value, int previousValue});
}

/// @nodoc
class __$$TopCardDataModelImplCopyWithImpl<$Res>
    extends _$TopCardDataModelCopyWithImpl<$Res, _$TopCardDataModelImpl>
    implements _$$TopCardDataModelImplCopyWith<$Res> {
  __$$TopCardDataModelImplCopyWithImpl(_$TopCardDataModelImpl _value,
      $Res Function(_$TopCardDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? previousValue = null,
  }) {
    return _then(_$TopCardDataModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      previousValue: null == previousValue
          ? _value.previousValue
          : previousValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopCardDataModelImpl implements _TopCardDataModel {
  const _$TopCardDataModelImpl(
      {required this.value, required this.previousValue});

  factory _$TopCardDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCardDataModelImplFromJson(json);

  @override
  final int value;
  @override
  final int previousValue;

  @override
  String toString() {
    return 'TopCardDataModel(value: $value, previousValue: $previousValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCardDataModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.previousValue, previousValue) ||
                other.previousValue == previousValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, previousValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopCardDataModelImplCopyWith<_$TopCardDataModelImpl> get copyWith =>
      __$$TopCardDataModelImplCopyWithImpl<_$TopCardDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCardDataModelImplToJson(
      this,
    );
  }
}

abstract class _TopCardDataModel implements TopCardDataModel {
  const factory _TopCardDataModel(
      {required final int value,
      required final int previousValue}) = _$TopCardDataModelImpl;

  factory _TopCardDataModel.fromJson(Map<String, dynamic> json) =
      _$TopCardDataModelImpl.fromJson;

  @override
  int get value;
  @override
  int get previousValue;
  @override
  @JsonKey(ignore: true)
  _$$TopCardDataModelImplCopyWith<_$TopCardDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
