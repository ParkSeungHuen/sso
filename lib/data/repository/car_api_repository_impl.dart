import 'package:sso_cool/data/data_source/car_api.dart';
import 'package:sso_cool/data/data_source/result.dart';
import 'package:sso_cool/domain/model/rehabilitation_car/rehabilitation_car.dart';
import 'package:sso_cool/domain/model/rehabilitation_car_send_data/rehabilitation_car_send_data.dart';
import 'package:sso_cool/domain/repository/car_api_repository.dart';

class CarApiRepositoryImpl extends CarApiRepository {
  final CarApi api;
  CarApiRepositoryImpl(this.api);

  @override
  Future<void> sendDataToCar(RehabilitationCarSendData rehabilitationCarSendData) async {
    await api.sendDataToCar(rehabilitationCarSendData);
  }

  @override
  Future<Result<List<RehabilitationCar>>> getCarList() {
    // TODO: implement getCarList
    throw UnimplementedError();
  }

}