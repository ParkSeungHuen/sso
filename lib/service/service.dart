import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sso_cool/bin/user.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Services{
  static const String url = 'https://jsonplaceholder.typicode.com/users';

  static Future<List<User>> getInfo() async{
    try {
      final response = await http.get(Uri.parse(url));
      if(response.statusCode == 200) {
        final List<User> user = userFromJson(response.body);
        return user;
      }
      else {
        Fluttertoast.showToast(msg: 'Error occurred. Please try again');
        return <User>[];
      }

    }catch(e) {
      Fluttertoast.showToast(msg: '$e');
      return <User>[];
    }

  }

  static Future<void> sendDataToServer(String startTime, String endTime, int Id, int rehablilityTime) async {
    final url = Uri.parse('https://fdzzz.free.beeceptor.com'); // 데이터를 보낼 서버 URL
    final data = {
      'startTime': '$startTime',
      'endTime': '$endTime',
      'memberId': '$Id',
      'rehabliltyTime':'$rehablilityTime'
    }; // 전송할 데이터

    final response = await http.post(url, body: data);// POST 요청 생성

    try{
      if (response.statusCode == 200) {
        // 서버 응답이 성공인 경우
        Fluttertoast.showToast(msg: 'Success');
      } else {
        // 서버 응답이 실패인 경우
        Fluttertoast.showToast(msg: '${response.statusCode}');
      }
    }catch(e){
      Fluttertoast.showToast(msg: '$e');
    }

  }
}

