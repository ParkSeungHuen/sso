import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:sso_cool/domain/model/rehabilitation_car_send_data/rehabilitation_car_send_data.dart';

part 'patient_setting_event.freezed.dart';

@freezed
abstract class PatientSettingEvent<T> with _$PatientSettingEvent<T> {
  const factory PatientSettingEvent.sendDataToCar(RehabilitationCarSendData rehabilitationCarSendData) = SendDataToCar;
}