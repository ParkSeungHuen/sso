import 'package:sso_cool/data/data_source/patient_api.dart';
import 'package:sso_cool/domain/model/patient/patient.dart';
import 'package:sso_cool/domain/repository/patient_api_repository.dart';

import '../data_source/result.dart';

class PatientApiRepositoryImpl extends PatientApiRepository {
  final PatientApi api;
  PatientApiRepositoryImpl(this.api);

  @override
  Future<Result<List<Patient>>> getPatientList() async {
    final Result<Iterable> result = await api.fetch();

    return result.when( // 타입검사 후 return, frezzed를 사용하여 result 객체를 만들었을 때 when을 쓰면 result 객체 안에 있는 success객체일 경우와 error객체일 경우에 대하여 각각 설정할 수 있다
      success: (iterable) {
        return Result.success(iterable.map((e) => Patient.fromJson(e)).toList());
      },
      error: (message) {
        return Result.error("네트워크 오류");
      },
    );
  }

  @override
  Future<Result<int>> getRehabilitationId(int id, int rehabilitationTime) async {
    final Result<dynamic> result = await api.rehabilitationIdRequest(id, rehabilitationTime);

    return result.when( // 타입검사 후 return, frezzed를 사용하여 result 객체를 만들었을 때 when을 쓰면 result 객체 안에 있는 success객체일 경우와 error객체일 경우에 대하여 각각 설정할 수 있다
      success: (rehabilitationInfoId) {
        return Result.success(rehabilitationInfoId);
      },
      error: (message) {
        return Result.error("네트워크 오류");
      },
    );

  }


}