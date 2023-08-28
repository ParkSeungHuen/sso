import 'package:sso_cool/domain/model/patient/patient.dart';

import '../../data/data_source/result.dart';

abstract class PatientApiRepository {
  Future<Result<List<Patient>>> getPatientList();
  Future<Result<int>> getRehabilitationId(int id, int rehabilitationTime);
}