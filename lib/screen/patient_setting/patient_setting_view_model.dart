import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:sso_cool/domain/repository/patient_api_repository.dart';
import 'package:sso_cool/screen/patient_setting/patient_setting_event.dart';
import 'package:sso_cool/screen/patient_setting/patient_setting_state.dart';

import '../../data/data_source/result.dart';
import '../../domain/model/rehabilitation_car_send_data/rehabilitation_car_send_data.dart';
import '../../domain/repository/car_api_repository.dart';

class PatientSettingViewModel extends ChangeNotifier {
  final PatientApiRepository patientApiRepository;
  final CarApiRepository carApiRepository;
  PatientSettingViewModel(this.patientApiRepository, this.carApiRepository);

  final _eventController = StreamController<PatientSettingEvent>();
  Stream<PatientSettingEvent> get eventStream => _eventController.stream;

  PatientSettingState _state = PatientSettingState(rehabilitationInfoId: 0);
  PatientSettingState get state => _state;

  Future<void> onEvent(PatientSettingEvent event) async {
    event.when(
        sendDataToCar: _sendDataToCar
    );

  }


  Future<int> rehabilitationIdRequest(int id, int rehabilitationTime) async {
    final Result<int> result = await patientApiRepository.getRehabilitationId(id, rehabilitationTime);
    int returnRehabilitationInfoId = 0;

    result.when(
      success: (rehabilitationInfoId) {
        _state = state.copyWith(rehabilitationInfoId : rehabilitationInfoId);
        returnRehabilitationInfoId = rehabilitationInfoId;
      },
      error: (message) {
        print(message);
      },
    );

    return returnRehabilitationInfoId;
  }

  Future<void> _sendDataToCar(RehabilitationCarSendData rehabilitationCarSendData) async {
    await carApiRepository.sendDataToCar(rehabilitationCarSendData);
  }



}