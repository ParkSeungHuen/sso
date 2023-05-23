import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class RehabilityIdSendData {
  static sendDataToCar(int rehabilityId, int time) {
    Socket.connect('10.100.133.127', 50538).then((socket) { // 실제 라즈베리파이의 주소를 작성해야 하는지등 알아보기 최악의 경우 고정IP설정까지.
      // 상식이가 해야할 거 : post를 하면 재활 Id 를 스마트폰 앱에 json형태로 돌려주는 것
      // + 라즈베리파이에서 생체정보 저장 장치에 데이터 전송할 때 받을 수 있게
      print('보행보조차와 연결되었습니다.');

      Map<String, dynamic> jsonData = {
        'rehabliltyId': rehabilityId,
        'time': time,
      };

      String jsonString = jsonEncode(jsonData);
      socket.write(jsonString);

      socket.close();
    }).catchError((e) {
      print('${e}');
    });
  }

  static Future<int> sendDataToServer(int Id, int rehablilityTime) async {
    final url = Uri.parse('http://10.100.132.83:8080/rehabilitation/setting'); // 데이터를 보낼 서버 URL

    final data = jsonEncode({
      'memberId': '$Id',
      'rehabliltationGoalTime':'$rehablilityTime'
    });

    final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: data
    );

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
      print(jsonResponse);
      final rehabId = jsonResponse['rehabilitationInfoId'] as int;
      return await rehabId;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return await 0;
    }
  }
}