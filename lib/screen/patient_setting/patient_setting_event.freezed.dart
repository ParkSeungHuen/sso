// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_setting_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientSettingEvent<T> {
  RehabilitationCarSendData get rehabilitationCarSendData =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RehabilitationCarSendData rehabilitationCarSendData)
        sendDataToCar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RehabilitationCarSendData rehabilitationCarSendData)?
        sendDataToCar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RehabilitationCarSendData rehabilitationCarSendData)?
        sendDataToCar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendDataToCar<T> value) sendDataToCar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendDataToCar<T> value)? sendDataToCar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendDataToCar<T> value)? sendDataToCar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientSettingEventCopyWith<T, PatientSettingEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientSettingEventCopyWith<T, $Res> {
  factory $PatientSettingEventCopyWith(PatientSettingEvent<T> value,
          $Res Function(PatientSettingEvent<T>) then) =
      _$PatientSettingEventCopyWithImpl<T, $Res, PatientSettingEvent<T>>;
  @useResult
  $Res call({RehabilitationCarSendData rehabilitationCarSendData});

  $RehabilitationCarSendDataCopyWith<$Res> get rehabilitationCarSendData;
}

/// @nodoc
class _$PatientSettingEventCopyWithImpl<T, $Res,
        $Val extends PatientSettingEvent<T>>
    implements $PatientSettingEventCopyWith<T, $Res> {
  _$PatientSettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rehabilitationCarSendData = null,
  }) {
    return _then(_value.copyWith(
      rehabilitationCarSendData: null == rehabilitationCarSendData
          ? _value.rehabilitationCarSendData
          : rehabilitationCarSendData // ignore: cast_nullable_to_non_nullable
              as RehabilitationCarSendData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RehabilitationCarSendDataCopyWith<$Res> get rehabilitationCarSendData {
    return $RehabilitationCarSendDataCopyWith<$Res>(
        _value.rehabilitationCarSendData, (value) {
      return _then(_value.copyWith(rehabilitationCarSendData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendDataToCarCopyWith<T, $Res>
    implements $PatientSettingEventCopyWith<T, $Res> {
  factory _$$SendDataToCarCopyWith(
          _$SendDataToCar<T> value, $Res Function(_$SendDataToCar<T>) then) =
      __$$SendDataToCarCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({RehabilitationCarSendData rehabilitationCarSendData});

  @override
  $RehabilitationCarSendDataCopyWith<$Res> get rehabilitationCarSendData;
}

/// @nodoc
class __$$SendDataToCarCopyWithImpl<T, $Res>
    extends _$PatientSettingEventCopyWithImpl<T, $Res, _$SendDataToCar<T>>
    implements _$$SendDataToCarCopyWith<T, $Res> {
  __$$SendDataToCarCopyWithImpl(
      _$SendDataToCar<T> _value, $Res Function(_$SendDataToCar<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rehabilitationCarSendData = null,
  }) {
    return _then(_$SendDataToCar<T>(
      null == rehabilitationCarSendData
          ? _value.rehabilitationCarSendData
          : rehabilitationCarSendData // ignore: cast_nullable_to_non_nullable
              as RehabilitationCarSendData,
    ));
  }
}

/// @nodoc

class _$SendDataToCar<T>
    with DiagnosticableTreeMixin
    implements SendDataToCar<T> {
  const _$SendDataToCar(this.rehabilitationCarSendData);

  @override
  final RehabilitationCarSendData rehabilitationCarSendData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientSettingEvent<$T>.sendDataToCar(rehabilitationCarSendData: $rehabilitationCarSendData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PatientSettingEvent<$T>.sendDataToCar'))
      ..add(DiagnosticsProperty(
          'rehabilitationCarSendData', rehabilitationCarSendData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendDataToCar<T> &&
            (identical(other.rehabilitationCarSendData,
                    rehabilitationCarSendData) ||
                other.rehabilitationCarSendData == rehabilitationCarSendData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rehabilitationCarSendData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendDataToCarCopyWith<T, _$SendDataToCar<T>> get copyWith =>
      __$$SendDataToCarCopyWithImpl<T, _$SendDataToCar<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RehabilitationCarSendData rehabilitationCarSendData)
        sendDataToCar,
  }) {
    return sendDataToCar(rehabilitationCarSendData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RehabilitationCarSendData rehabilitationCarSendData)?
        sendDataToCar,
  }) {
    return sendDataToCar?.call(rehabilitationCarSendData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RehabilitationCarSendData rehabilitationCarSendData)?
        sendDataToCar,
    required TResult orElse(),
  }) {
    if (sendDataToCar != null) {
      return sendDataToCar(rehabilitationCarSendData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendDataToCar<T> value) sendDataToCar,
  }) {
    return sendDataToCar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendDataToCar<T> value)? sendDataToCar,
  }) {
    return sendDataToCar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendDataToCar<T> value)? sendDataToCar,
    required TResult orElse(),
  }) {
    if (sendDataToCar != null) {
      return sendDataToCar(this);
    }
    return orElse();
  }
}

abstract class SendDataToCar<T> implements PatientSettingEvent<T> {
  const factory SendDataToCar(
          final RehabilitationCarSendData rehabilitationCarSendData) =
      _$SendDataToCar<T>;

  @override
  RehabilitationCarSendData get rehabilitationCarSendData;
  @override
  @JsonKey(ignore: true)
  _$$SendDataToCarCopyWith<T, _$SendDataToCar<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
