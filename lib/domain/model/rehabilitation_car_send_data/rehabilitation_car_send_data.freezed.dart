// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rehabilitation_car_send_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RehabilitationCarSendData _$RehabilitationCarSendDataFromJson(
    Map<String, dynamic> json) {
  return _RehabilitationCarSendData.fromJson(json);
}

/// @nodoc
mixin _$RehabilitationCarSendData {
  int get rehabilitationId => throw _privateConstructorUsedError;
  int get rehabilitationTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RehabilitationCarSendDataCopyWith<RehabilitationCarSendData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RehabilitationCarSendDataCopyWith<$Res> {
  factory $RehabilitationCarSendDataCopyWith(RehabilitationCarSendData value,
          $Res Function(RehabilitationCarSendData) then) =
      _$RehabilitationCarSendDataCopyWithImpl<$Res, RehabilitationCarSendData>;
  @useResult
  $Res call({int rehabilitationId, int rehabilitationTime});
}

/// @nodoc
class _$RehabilitationCarSendDataCopyWithImpl<$Res,
        $Val extends RehabilitationCarSendData>
    implements $RehabilitationCarSendDataCopyWith<$Res> {
  _$RehabilitationCarSendDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rehabilitationId = null,
    Object? rehabilitationTime = null,
  }) {
    return _then(_value.copyWith(
      rehabilitationId: null == rehabilitationId
          ? _value.rehabilitationId
          : rehabilitationId // ignore: cast_nullable_to_non_nullable
              as int,
      rehabilitationTime: null == rehabilitationTime
          ? _value.rehabilitationTime
          : rehabilitationTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RehabilitationCarSendDataCopyWith<$Res>
    implements $RehabilitationCarSendDataCopyWith<$Res> {
  factory _$$_RehabilitationCarSendDataCopyWith(
          _$_RehabilitationCarSendData value,
          $Res Function(_$_RehabilitationCarSendData) then) =
      __$$_RehabilitationCarSendDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rehabilitationId, int rehabilitationTime});
}

/// @nodoc
class __$$_RehabilitationCarSendDataCopyWithImpl<$Res>
    extends _$RehabilitationCarSendDataCopyWithImpl<$Res,
        _$_RehabilitationCarSendData>
    implements _$$_RehabilitationCarSendDataCopyWith<$Res> {
  __$$_RehabilitationCarSendDataCopyWithImpl(
      _$_RehabilitationCarSendData _value,
      $Res Function(_$_RehabilitationCarSendData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rehabilitationId = null,
    Object? rehabilitationTime = null,
  }) {
    return _then(_$_RehabilitationCarSendData(
      rehabilitationId: null == rehabilitationId
          ? _value.rehabilitationId
          : rehabilitationId // ignore: cast_nullable_to_non_nullable
              as int,
      rehabilitationTime: null == rehabilitationTime
          ? _value.rehabilitationTime
          : rehabilitationTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RehabilitationCarSendData
    with DiagnosticableTreeMixin
    implements _RehabilitationCarSendData {
  const _$_RehabilitationCarSendData(
      {required this.rehabilitationId, required this.rehabilitationTime});

  factory _$_RehabilitationCarSendData.fromJson(Map<String, dynamic> json) =>
      _$$_RehabilitationCarSendDataFromJson(json);

  @override
  final int rehabilitationId;
  @override
  final int rehabilitationTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RehabilitationCarSendData(rehabilitationId: $rehabilitationId, rehabilitationTime: $rehabilitationTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RehabilitationCarSendData'))
      ..add(DiagnosticsProperty('rehabilitationId', rehabilitationId))
      ..add(DiagnosticsProperty('rehabilitationTime', rehabilitationTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RehabilitationCarSendData &&
            (identical(other.rehabilitationId, rehabilitationId) ||
                other.rehabilitationId == rehabilitationId) &&
            (identical(other.rehabilitationTime, rehabilitationTime) ||
                other.rehabilitationTime == rehabilitationTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rehabilitationId, rehabilitationTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RehabilitationCarSendDataCopyWith<_$_RehabilitationCarSendData>
      get copyWith => __$$_RehabilitationCarSendDataCopyWithImpl<
          _$_RehabilitationCarSendData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RehabilitationCarSendDataToJson(
      this,
    );
  }
}

abstract class _RehabilitationCarSendData implements RehabilitationCarSendData {
  const factory _RehabilitationCarSendData(
      {required final int rehabilitationId,
      required final int rehabilitationTime}) = _$_RehabilitationCarSendData;

  factory _RehabilitationCarSendData.fromJson(Map<String, dynamic> json) =
      _$_RehabilitationCarSendData.fromJson;

  @override
  int get rehabilitationId;
  @override
  int get rehabilitationTime;
  @override
  @JsonKey(ignore: true)
  _$$_RehabilitationCarSendDataCopyWith<_$_RehabilitationCarSendData>
      get copyWith => throw _privateConstructorUsedError;
}
