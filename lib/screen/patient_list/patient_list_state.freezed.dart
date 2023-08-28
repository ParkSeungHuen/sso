// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientListState _$PatientListStateFromJson(Map<String, dynamic> json) {
  return _PatientListState.fromJson(json);
}

/// @nodoc
mixin _$PatientListState {
  List<Patient> get patient => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientListStateCopyWith<PatientListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientListStateCopyWith<$Res> {
  factory $PatientListStateCopyWith(
          PatientListState value, $Res Function(PatientListState) then) =
      _$PatientListStateCopyWithImpl<$Res, PatientListState>;
  @useResult
  $Res call({List<Patient> patient, bool loading});
}

/// @nodoc
class _$PatientListStateCopyWithImpl<$Res, $Val extends PatientListState>
    implements $PatientListStateCopyWith<$Res> {
  _$PatientListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patient = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientListStateCopyWith<$Res>
    implements $PatientListStateCopyWith<$Res> {
  factory _$$_PatientListStateCopyWith(
          _$_PatientListState value, $Res Function(_$_PatientListState) then) =
      __$$_PatientListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Patient> patient, bool loading});
}

/// @nodoc
class __$$_PatientListStateCopyWithImpl<$Res>
    extends _$PatientListStateCopyWithImpl<$Res, _$_PatientListState>
    implements _$$_PatientListStateCopyWith<$Res> {
  __$$_PatientListStateCopyWithImpl(
      _$_PatientListState _value, $Res Function(_$_PatientListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patient = null,
    Object? loading = null,
  }) {
    return _then(_$_PatientListState(
      patient: null == patient
          ? _value._patient
          : patient // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientListState
    with DiagnosticableTreeMixin
    implements _PatientListState {
  const _$_PatientListState(
      {required final List<Patient> patient, required this.loading})
      : _patient = patient;

  factory _$_PatientListState.fromJson(Map<String, dynamic> json) =>
      _$$_PatientListStateFromJson(json);

  final List<Patient> _patient;
  @override
  List<Patient> get patient {
    if (_patient is EqualUnmodifiableListView) return _patient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patient);
  }

  @override
  final bool loading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientListState(patient: $patient, loading: $loading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatientListState'))
      ..add(DiagnosticsProperty('patient', patient))
      ..add(DiagnosticsProperty('loading', loading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientListState &&
            const DeepCollectionEquality().equals(other._patient, _patient) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_patient), loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientListStateCopyWith<_$_PatientListState> get copyWith =>
      __$$_PatientListStateCopyWithImpl<_$_PatientListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientListStateToJson(
      this,
    );
  }
}

abstract class _PatientListState implements PatientListState {
  const factory _PatientListState(
      {required final List<Patient> patient,
      required final bool loading}) = _$_PatientListState;

  factory _PatientListState.fromJson(Map<String, dynamic> json) =
      _$_PatientListState.fromJson;

  @override
  List<Patient> get patient;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_PatientListStateCopyWith<_$_PatientListState> get copyWith =>
      throw _privateConstructorUsedError;
}
