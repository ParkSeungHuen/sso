import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:sso_cool/data/api_resource.dart';
import 'package:sso_cool/domain/model/rehabilitation_car_send_data/rehabilitation_car_send_data.dart';

class CarApi {

  Future<void> sendDataToCar(RehabilitationCarSendData rehabilitationCarSendData) async {
    Socket.connect('${ApiResource.raspIp}', 50538).then((socket) { // 실제 라즈베리파이의 주소를 작성해야 하는지등 알아보기 최악의 경우 고정IP설정까지.
      // 상식이가 해야할 거 : post를 하면 재활 Id 를 스마트폰 앱에 json형태로 돌려주는 것
      // + 라즈베리파이에서 생체정보 저장 장치에 데이터 전송할 때 받을 수 있게
      print('보행보조차와 연결되었습니다.');

      Map<String, dynamic> jsonData = {
        'rehabliltyId': rehabilitationCarSendData.rehabilitationId,
        'time': rehabilitationCarSendData.rehabilitationTime,
      };

      String jsonString = jsonEncode(jsonData);
      socket.write(jsonString);

      socket.close();
    }).catchError((e) {
      print('${e}');
    });
  }


}