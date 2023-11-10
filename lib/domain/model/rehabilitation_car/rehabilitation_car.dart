import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'rehabilitation_car.freezed.dart';

part 'rehabilitation_car.g.dart';

@freezed
class RehabilitationCar with _$RehabilitationCar {
  const factory RehabilitationCar({
    int? id,
    required String name,
  }) = _RehabilitationCar;

  factory RehabilitationCar.fromJson(Map<String, Object?> json) => _$RehabilitationCarFromJson(json);
}