import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'patient_list_event.freezed.dart';

@freezed
abstract class PatientListEvent<T> with _$PatientListEvent<T> {
  const factory PatientListEvent.getPatientList() = GetPatientList;
  const factory PatientListEvent.searchPatientList(String searchText) = SearchPatientList;
}