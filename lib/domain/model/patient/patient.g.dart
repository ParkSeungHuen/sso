// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Patient _$$_PatientFromJson(Map<String, dynamic> json) => _$_Patient(
      id: json['id'] as int?,
      name: json['name'] as String,
      age: json['age'] as int,
      birthday: DateTime.parse(json['birthday'] as String),
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      gender: json['gender'] as String,
      mobile: json['mobile'] as String,
    );

Map<String, dynamic> _$$_PatientToJson(_$_Patient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'birthday': instance.birthday.toIso8601String(),
      'height': instance.height,
      'weight': instance.weight,
      'gender': instance.gender,
      'mobile': instance.mobile,
    };
