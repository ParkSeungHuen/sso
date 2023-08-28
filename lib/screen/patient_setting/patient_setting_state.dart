import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'patient_setting_state.freezed.dart';

part 'patient_setting_state.g.dart';

@freezed
class PatientSettingState with _$PatientSettingState {
  const factory PatientSettingState({
    required int rehabilitationInfoId,
  }) = _PatientSettingState;

  factory PatientSettingState.fromJson(Map<String, Object?> json) => _$PatientSettingStateFromJson(json);
}