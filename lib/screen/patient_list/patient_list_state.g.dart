// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientListState _$$_PatientListStateFromJson(Map<String, dynamic> json) =>
    _$_PatientListState(
      patient: (json['patient'] as List<dynamic>)
          .map((e) => Patient.fromJson(e as Map<String, dynamic>))
          .toList(),
      loading: json['loading'] as bool,
    );

Map<String, dynamic> _$$_PatientListStateToJson(_$_PatientListState instance) =>
    <String, dynamic>{
      'patient': instance.patient,
      'loading': instance.loading,
    };
