// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rehabilitation_car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RehabilitationCar _$RehabilitationCarFromJson(Map<String, dynamic> json) {
  return _RehabilitationCar.fromJson(json);
}

/// @nodoc
mixin _$RehabilitationCar {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RehabilitationCarCopyWith<RehabilitationCar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RehabilitationCarCopyWith<$Res> {
  factory $RehabilitationCarCopyWith(
          RehabilitationCar value, $Res Function(RehabilitationCar) then) =
      _$RehabilitationCarCopyWithImpl<$Res, RehabilitationCar>;
  @useResult
  $Res call({int? id, String name});
}

/// @nodoc
class _$RehabilitationCarCopyWithImpl<$Res, $Val extends RehabilitationCar>
    implements $RehabilitationCarCopyWith<$Res> {
  _$RehabilitationCarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RehabilitationCarCopyWith<$Res>
    implements $RehabilitationCarCopyWith<$Res> {
  factory _$$_RehabilitationCarCopyWith(_$_RehabilitationCar value,
          $Res Function(_$_RehabilitationCar) then) =
      __$$_RehabilitationCarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name});
}

/// @nodoc
class __$$_RehabilitationCarCopyWithImpl<$Res>
    extends _$RehabilitationCarCopyWithImpl<$Res, _$_RehabilitationCar>
    implements _$$_RehabilitationCarCopyWith<$Res> {
  __$$_RehabilitationCarCopyWithImpl(
      _$_RehabilitationCar _value, $Res Function(_$_RehabilitationCar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_$_RehabilitationCar(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RehabilitationCar
    with DiagnosticableTreeMixin
    implements _RehabilitationCar {
  const _$_RehabilitationCar({this.id, required this.name});

  factory _$_RehabilitationCar.fromJson(Map<String, dynamic> json) =>
      _$$_RehabilitationCarFromJson(json);

  @override
  final int? id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RehabilitationCar(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RehabilitationCar'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RehabilitationCar &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RehabilitationCarCopyWith<_$_RehabilitationCar> get copyWith =>
      __$$_RehabilitationCarCopyWithImpl<_$_RehabilitationCar>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RehabilitationCarToJson(
      this,
    );
  }
}

abstract class _RehabilitationCar implements RehabilitationCar {
  const factory _RehabilitationCar(
      {final int? id, required final String name}) = _$_RehabilitationCar;

  factory _RehabilitationCar.fromJson(Map<String, dynamic> json) =
      _$_RehabilitationCar.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_RehabilitationCarCopyWith<_$_RehabilitationCar> get copyWith =>
      throw _privateConstructorUsedError;
}
