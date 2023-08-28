import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:sso_cool/domain/model/patient/patient.dart';
import 'package:sso_cool/domain/repository/patient_api_repository.dart';
import 'package:sso_cool/screen/patient_list/patient_list_event.dart';
import 'package:sso_cool/screen/patient_list/patient_list_state.dart';

import '../../data/data_source/result.dart';

class PatientListViewModel extends ChangeNotifier {
  final PatientApiRepository repository;
  PatientListViewModel(this.repository) {
   _getPatientList();  // 시작할 때 getPatientList 실행, 검색 기능
  }

  final _eventController = StreamController<PatientListEvent>();
  Stream<PatientListEvent> get eventStream => _eventController.stream;

  PatientListState _state = PatientListState(patient: [], loading: false);
  PatientListState get state => _state;

  Future<void> onEvent(PatientListEvent event) async {
    event.when(
        getPatientList: _getPatientList,
        searchPatientList: _searchPatientList,
    );
  }

  Future<void> _getPatientList() async { // 환자 리스트 조회

    _state = state.copyWith(loading: true);
    notifyListeners();

    final Result<List<Patient>> result = await repository.getPatientList();

    result.when(
      success: (patient) {
        _state = state.copyWith(patient : patient);
        notifyListeners();
      },
      error: (message) {
        print(message);
      },
    );

    _state = state.copyWith(loading: false);
    notifyListeners();
  }

  Future<void> _searchPatientList(String searchText) async {
    _state = state.copyWith(loading: true);
    notifyListeners();

    final Result<List<Patient>> result = await repository.getPatientList();
    List<Patient> filteredItems = [];

    result.when(
      success: (patient) {
        filteredItems = patient
            .where((item) => item.name
            .toLowerCase()
            .contains(
            searchText!.toLowerCase()))
            .toList(); // 이름이 일치하는 것만 필터링
        _state = state.copyWith(patient : filteredItems);
        notifyListeners();
      },
      error: (message) {
        print(message);
      },
    );

    _state = state.copyWith(loading: false);
    notifyListeners();
  }


}