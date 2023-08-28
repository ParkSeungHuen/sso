import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'patient.freezed.dart';

part 'patient.g.dart';

@freezed
class Patient with _$Patient {
  const factory Patient({
    int? id,
    required String name,
    required int age,
    required DateTime birthday,
    required double height,
    required double weight,
    required String gender,
    required String mobile,
  }) = _Patient;

  factory Patient.fromJson(Map<String, Object?> json) => _$PatientFromJson(json);
}