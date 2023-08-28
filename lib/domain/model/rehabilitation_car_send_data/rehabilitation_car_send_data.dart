import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'rehabilitation_car_send_data.freezed.dart';

part 'rehabilitation_car_send_data.g.dart';

@freezed
class RehabilitationCarSendData with _$RehabilitationCarSendData {
  const factory RehabilitationCarSendData({
    required int rehabilitationId,
    required int rehabilitationTime,
  }) = _RehabilitationCarSendData;

  factory RehabilitationCarSendData.fromJson(Map<String, Object?> json) => _$RehabilitationCarSendDataFromJson(json);
}