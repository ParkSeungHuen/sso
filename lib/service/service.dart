import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sso_cool/bin/user.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../bin/rehabilityid.dart';

class Services{
  static const String url ='http://10.100.132.83:8080/member/list';

  static Future<List<User>> getInfo() async{
    try {
      final response = await http.get(Uri.parse(url), headers: {"Accept-Charset": "utf-8"});
      if(response.statusCode == 200) {
        final List<User> user = userFromJson(response.body);
        print(userFromJson(response.body));

        for(User user in user) {
          print(user.name);
        }

        return user;
      }
      else {
        Fluttertoast.showToast(msg: 'Error occurred. Please try again');
        return <User>[];
      }

    }catch(e) {
      Fluttertoast.showToast(msg: '$e');
      print('${e}');
      return <User>[];
    }

  }

  // static Future<void> sendDataToServer(int Id, int rehablilityTime) async {
  //   final url = Uri.parse('http://10.100.132.83:8080/rehabilitation/setting'); // 데이터를 보낼 서버 URL
  //   // final data = jsonEncode({
  //   //   'memberId': '$Id',
  //   //   'rehabliltationGoalTime':'$rehablilityTime'
  //   // });
  //   // var headers = {'Content-Type': 'application/json'};
  //   //
  //   // final response = await http.post(url,headers: headers, body: data);
  //   //
  //   // try{
  //   //   if (response.statusCode == 200) {
  //   //     // 서버 응답이 성공인 경우
  //   //     Fluttertoast.showToast(msg: 'Success');
  //   //     int rehabliltyId = rehabliltyIdFromJson(response.body) as int;
  //   //     return rehabliltyId;
  //   //   } else {
  //   //     // 서버 응답이 실패인 경우
  //   //     Fluttertoast.showToast(msg: '${response.statusCode}');
  //   //     return 0;
  //   //   }
  //   // }catch(e){
  //   //   Fluttertoast.showToast(msg: '$e');
  //   //   print('${e}');
  //   //   return 0;
  //   // }
  //
  //   final data = jsonEncode({
  //     'memberId': '$Id',
  //     'rehabliltationGoalTime':'$rehablilityTime'
  //   });
  //
  //   final response = await http.post(
  //       url,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: data
  //   );
  //
  //   if (response.statusCode == 200) {
  //     final jsonResponse = jsonDecode(response.body);
  //     print(jsonResponse);
  //     return(jsonResponse);
  //   } else {
  //     print('Request failed with status: ${response.statusCode}.');
  //   }
  // }

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

