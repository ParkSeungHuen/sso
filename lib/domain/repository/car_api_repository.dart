
import 'package:sso_cool/domain/model/rehabilitation_car_send_data/rehabilitation_car_send_data.dart';

abstract class CarApiRepository {
  Future<void> sendDataToCar(RehabilitationCarSendData rehabilitationCarSendData);
}