import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sso_cool/data/api_resource.dart';
import 'package:sso_cool/data/data_source/result.dart';

class PatientApi {

  final http.Client client;
  PatientApi(this.client);
  static const patientUrl = '${ApiResource.ip}';

  Future<Result<List<dynamic>>> fetch() async { // 구현완
    try {
      final response = await client.get(Uri.parse('$patientUrl/api/patients')); // 사람들의 리스트를 불러오기
      List<dynamic> jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
      return Result.success(jsonResponse);
    } catch (e) {
      return const Result.error('네트워크 오류');
    }
  }

  Future<Result<dynamic>> rehabilitationIdRequest(int id, int rehabilitationTime) async {
    try {
      final data = jsonEncode({
        'patientId': id, // 수정
        'goalTime': rehabilitationTime,
      });

      final response = await http.post(
          Uri.parse('$patientUrl/rehabilitations'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: data
      );

      Map<String, dynamic> jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
      return Result.success(jsonResponse['rehabilitationId']);
    } catch (e) {
      return const Result.error('네트워크 오류');
    }

  }


}