
import 'package:sso_cool/data/data_source/result.dart';
import 'package:sso_cool/domain/model/rehabilitation_car_send_data/rehabilitation_car_send_data.dart';

import '../model/rehabilitation_car/rehabilitation_car.dart';

abstract class CarApiRepository {
  Future<void> sendDataToCar(RehabilitationCarSendData rehabilitationCarSendData);

  Future<Result<List<RehabilitationCar>>> getCarList(); // 보행보조차 조회
}