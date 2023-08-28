import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../domain/model/patient/patient.dart';

part 'patient_list_state.freezed.dart';

part 'patient_list_state.g.dart';

@freezed
class PatientListState with _$PatientListState {
  const factory PatientListState({
    required List<Patient> patient,
    required bool loading,
  }) = _PatientListState;

  factory PatientListState.fromJson(Map<String, Object?> json) => _$PatientListStateFromJson(json);
}