// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientListEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPatientList,
    required TResult Function(String searchText) searchPatientList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPatientList,
    TResult? Function(String searchText)? searchPatientList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPatientList,
    TResult Function(String searchText)? searchPatientList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPatientList<T> value) getPatientList,
    required TResult Function(SearchPatientList<T> value) searchPatientList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPatientList<T> value)? getPatientList,
    TResult? Function(SearchPatientList<T> value)? searchPatientList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPatientList<T> value)? getPatientList,
    TResult Function(SearchPatientList<T> value)? searchPatientList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientListEventCopyWith<T, $Res> {
  factory $PatientListEventCopyWith(
          PatientListEvent<T> value, $Res Function(PatientListEvent<T>) then) =
      _$PatientListEventCopyWithImpl<T, $Res, PatientListEvent<T>>;
}

/// @nodoc
class _$PatientListEventCopyWithImpl<T, $Res, $Val extends PatientListEvent<T>>
    implements $PatientListEventCopyWith<T, $Res> {
  _$PatientListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPatientListCopyWith<T, $Res> {
  factory _$$GetPatientListCopyWith(
          _$GetPatientList<T> value, $Res Function(_$GetPatientList<T>) then) =
      __$$GetPatientListCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetPatientListCopyWithImpl<T, $Res>
    extends _$PatientListEventCopyWithImpl<T, $Res, _$GetPatientList<T>>
    implements _$$GetPatientListCopyWith<T, $Res> {
  __$$GetPatientListCopyWithImpl(
      _$GetPatientList<T> _value, $Res Function(_$GetPatientList<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPatientList<T>
    with DiagnosticableTreeMixin
    implements GetPatientList<T> {
  const _$GetPatientList();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientListEvent<$T>.getPatientList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'PatientListEvent<$T>.getPatientList'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPatientList<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPatientList,
    required TResult Function(String searchText) searchPatientList,
  }) {
    return getPatientList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPatientList,
    TResult? Function(String searchText)? searchPatientList,
  }) {
    return getPatientList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPatientList,
    TResult Function(String searchText)? searchPatientList,
    required TResult orElse(),
  }) {
    if (getPatientList != null) {
      return getPatientList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPatientList<T> value) getPatientList,
    required TResult Function(SearchPatientList<T> value) searchPatientList,
  }) {
    return getPatientList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPatientList<T> value)? getPatientList,
    TResult? Function(SearchPatientList<T> value)? searchPatientList,
  }) {
    return getPatientList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPatientList<T> value)? getPatientList,
    TResult Function(SearchPatientList<T> value)? searchPatientList,
    required TResult orElse(),
  }) {
    if (getPatientList != null) {
      return getPatientList(this);
    }
    return orElse();
  }
}

abstract class GetPatientList<T> implements PatientListEvent<T> {
  const factory GetPatientList() = _$GetPatientList<T>;
}

/// @nodoc
abstract class _$$SearchPatientListCopyWith<T, $Res> {
  factory _$$SearchPatientListCopyWith(_$SearchPatientList<T> value,
          $Res Function(_$SearchPatientList<T>) then) =
      __$$SearchPatientListCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$SearchPatientListCopyWithImpl<T, $Res>
    extends _$PatientListEventCopyWithImpl<T, $Res, _$SearchPatientList<T>>
    implements _$$SearchPatientListCopyWith<T, $Res> {
  __$$SearchPatientListCopyWithImpl(_$SearchPatientList<T> _value,
      $Res Function(_$SearchPatientList<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$SearchPatientList<T>(
      null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchPatientList<T>
    with DiagnosticableTreeMixin
    implements SearchPatientList<T> {
  const _$SearchPatientList(this.searchText);

  @override
  final String searchText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientListEvent<$T>.searchPatientList(searchText: $searchText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PatientListEvent<$T>.searchPatientList'))
      ..add(DiagnosticsProperty('searchText', searchText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPatientList<T> &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPatientListCopyWith<T, _$SearchPatientList<T>> get copyWith =>
      __$$SearchPatientListCopyWithImpl<T, _$SearchPatientList<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPatientList,
    required TResult Function(String searchText) searchPatientList,
  }) {
    return searchPatientList(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPatientList,
    TResult? Function(String searchText)? searchPatientList,
  }) {
    return searchPatientList?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPatientList,
    TResult Function(String searchText)? searchPatientList,
    required TResult orElse(),
  }) {
    if (searchPatientList != null) {
      return searchPatientList(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPatientList<T> value) getPatientList,
    required TResult Function(SearchPatientList<T> value) searchPatientList,
  }) {
    return searchPatientList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPatientList<T> value)? getPatientList,
    TResult? Function(SearchPatientList<T> value)? searchPatientList,
  }) {
    return searchPatientList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPatientList<T> value)? getPatientList,
    TResult Function(SearchPatientList<T> value)? searchPatientList,
    required TResult orElse(),
  }) {
    if (searchPatientList != null) {
      return searchPatientList(this);
    }
    return orElse();
  }
}

abstract class SearchPatientList<T> implements PatientListEvent<T> {
  const factory SearchPatientList(final String searchText) =
      _$SearchPatientList<T>;

  String get searchText;
  @JsonKey(ignore: true)
  _$$SearchPatientListCopyWith<T, _$SearchPatientList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
