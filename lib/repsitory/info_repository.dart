import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sso_cool/model/user.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Services{
  static const String url ='http://10.100.132.83:8080/member/list';

  static Future<List<User>> getInfo() async{
    try {
      final response = await http.get(Uri.parse(url), headers: {"Accept-Charset": "utf-8"});
      if(response.statusCode == 200) {
        final List<User> user = userFromJson(utf8.decode(response.bodyBytes));
        // print(userFromJson(response.body));
        print(userFromJson(utf8.decode(response.bodyBytes))); // decode utf8 테스트 필요

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

}

