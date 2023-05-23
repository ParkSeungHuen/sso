import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:sso_cool/data/rehability_id_send_data.dart';
import 'package:intl/intl.dart';
import '../model/user.dart';

class Setting_Screen extends StatefulWidget {
  const Setting_Screen({
    Key? key,
  }) : super(key: key);

  @override
  State<Setting_Screen> createState() => _Setting_ScreenState();
}

class _Setting_ScreenState extends State<Setting_Screen> {
  final _valueList = [
    '5',
    '10',
    '15',
    '20',
    '25',
    '30',
    '35',
    '40',
    '45',
    '50',
    '55',
    '60'
  ];
  String? _selectedValue;
  int Time = 0;
  int rehabilityId = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final _Data = ModalRoute.of(context)?.settings.arguments as User;

    return Scaffold(
        appBar: AppBar(
          title: Text("재활 시간 설정"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  '※ 환자 기본 정보',
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    child: Text("성명", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    width: 100,
                  ),
                  Text(_Data.name),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    child: Text("나이", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    width: 100,
                  ),
                  Text('${_Data.age}'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    child: Text("성별", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    width: 100,
                  ),
                  Text(_Data.gender),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    child: Text("생년월일", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    width: 100,
                  ),
                  Text('${_Data.birth}'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    child: Text("키", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    width: 100,
                  ),
                  Text('${_Data.height}'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    child: Text("몸무게", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    width: 100,
                  ),
                  Text('${_Data.weight}'),
                ],
              ),
              SizedBox(
                height: 40,
              ),


              Container(
                width: double.infinity,
                child: Text(
                  '※ 재활 정보',
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    child: Text("재활시간 : ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    width: 100,
                  ),
                  DropdownButton(
                    hint: Text("선택"),
                    items: _valueList
                        .map(
                          (String item) => DropdownMenuItem(
                            child: Text(item),
                            value: item,
                          ),
                        )
                        .toList(),
                    onChanged: (String? value) => setState(() {
                      this._selectedValue = value;

                      if (int.tryParse(value!) != null) {
                        Time = int.parse(value!);
                        // Fluttertoast.showToast(msg: '$Time');
                      } else {
                        Fluttertoast.showToast(msg: 'error');
                      }
                    }),
                    value: _selectedValue,
                  ),
                ],
              ),

              SizedBox(
                height: 100
              ),

              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    '설정 완료',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    DateTime startT = DateTime.now();
                    DateTime endT = startT.add(Duration(minutes: Time));

                    final formatter = DateFormat('EEEE, MMMM d, y, h, mm');
                    final startTime = formatter.format(startT);
                    final endTime = formatter.format(endT);

                    RehabilityIdSendData.sendDataToServer(_Data.id, Time).then((value) {// 시작시간, 끝시간, 사용자 ID 서버로 전송
                      setState(() {
                        rehabilityId = value as int;
                        Fluttertoast.showToast(msg: '$rehabilityId');

                        RehabilityIdSendData.sendDataToCar(rehabilityId, Time); // 보행보조차로 소켓통신 전송하는 코드
                      });
                    });

                    // Fluttertoast.showToast(msg: '$startTime');
                    // Fluttertoast.showToast(msg: '$endTime');
                  },
                ),
              )
            ],
          ),
        )
    );
  }
}
