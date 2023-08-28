// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientSettingState _$PatientSettingStateFromJson(Map<String, dynamic> json) {
  return _PatientSettingState.fromJson(json);
}

/// @nodoc
mixin _$PatientSettingState {
  int get rehabilitationInfoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientSettingStateCopyWith<PatientSettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientSettingStateCopyWith<$Res> {
  factory $PatientSettingStateCopyWith(
          PatientSettingState value, $Res Function(PatientSettingState) then) =
      _$PatientSettingStateCopyWithImpl<$Res, PatientSettingState>;
  @useResult
  $Res call({int rehabilitationInfoId});
}

/// @nodoc
class _$PatientSettingStateCopyWithImpl<$Res, $Val extends PatientSettingState>
    implements $PatientSettingStateCopyWith<$Res> {
  _$PatientSettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rehabilitationInfoId = null,
  }) {
    return _then(_value.copyWith(
      rehabilitationInfoId: null == rehabilitationInfoId
          ? _value.rehabilitationInfoId
          : rehabilitationInfoId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientSettingStateCopyWith<$Res>
    implements $PatientSettingStateCopyWith<$Res> {
  factory _$$_PatientSettingStateCopyWith(_$_PatientSettingState value,
          $Res Function(_$_PatientSettingState) then) =
      __$$_PatientSettingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rehabilitationInfoId});
}

/// @nodoc
class __$$_PatientSettingStateCopyWithImpl<$Res>
    extends _$PatientSettingStateCopyWithImpl<$Res, _$_PatientSettingState>
    implements _$$_PatientSettingStateCopyWith<$Res> {
  __$$_PatientSettingStateCopyWithImpl(_$_PatientSettingState _value,
      $Res Function(_$_PatientSettingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rehabilitationInfoId = null,
  }) {
    return _then(_$_PatientSettingState(
      rehabilitationInfoId: null == rehabilitationInfoId
          ? _value.rehabilitationInfoId
          : rehabilitationInfoId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientSettingState
    with DiagnosticableTreeMixin
    implements _PatientSettingState {
  const _$_PatientSettingState({required this.rehabilitationInfoId});

  factory _$_PatientSettingState.fromJson(Map<String, dynamic> json) =>
      _$$_PatientSettingStateFromJson(json);

  @override
  final int rehabilitationInfoId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientSettingState(rehabilitationInfoId: $rehabilitationInfoId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatientSettingState'))
      ..add(DiagnosticsProperty('rehabilitationInfoId', rehabilitationInfoId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientSettingState &&
            (identical(other.rehabilitationInfoId, rehabilitationInfoId) ||
                other.rehabilitationInfoId == rehabilitationInfoId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rehabilitationInfoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientSettingStateCopyWith<_$_PatientSettingState> get copyWith =>
      __$$_PatientSettingStateCopyWithImpl<_$_PatientSettingState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientSettingStateToJson(
      this,
    );
  }
}

abstract class _PatientSettingState implements PatientSettingState {
  const factory _PatientSettingState(
      {required final int rehabilitationInfoId}) = _$_PatientSettingState;

  factory _PatientSettingState.fromJson(Map<String, dynamic> json) =
      _$_PatientSettingState.fromJson;

  @override
  int get rehabilitationInfoId;
  @override
  @JsonKey(ignore: true)
  _$$_PatientSettingStateCopyWith<_$_PatientSettingState> get copyWith =>
      throw _privateConstructorUsedError;
}
