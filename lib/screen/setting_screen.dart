import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:sso_cool/service/service.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';
import '../bin/user.dart';

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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final _Data = ModalRoute.of(context)?.settings.arguments as User;

    return Scaffold(
        appBar: AppBar(
          title: Text("Setting Screen"),
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
                  Text(_Data.username),
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
                  Text(_Data.phone),
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
                  Text(_Data.phone),
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
                  Text(_Data.website),
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
                  Text(_Data.email),
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

                    Services.sendDataToServer(startTime, endTime, _Data.id);// 시작시간, 끝시간, 사용자 ID 서버로 전송

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
