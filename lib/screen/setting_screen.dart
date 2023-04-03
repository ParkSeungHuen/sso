import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'bin/user.dart';
import 'package:sso_cool/screen/bin/service.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';


class Setting_Screen extends StatefulWidget {
  const Setting_Screen({Key? key,}) : super(key: key);

  @override
  State<Setting_Screen> createState() => _Setting_ScreenState();
}

class _Setting_ScreenState extends State<Setting_Screen> {

  final _valueList = ['5', '10', '15', '20', '25', '30', '35', '40', '45', '50', '55', '60'];
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
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '환자 기본 정보',
                    style: TextStyle(fontSize: 25),
                  ),

                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Text("성명"),
                      SizedBox(width: 50,),
                      Text(_Data.name),
                    ],
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text("나이"),
                      SizedBox(width: 50,),
                      Text(_Data.username),
                    ],
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text("성별"),
                      SizedBox(width: 50,),
                      Text(_Data.phone),
                    ],
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text("생년월일"),
                      SizedBox(width: 50,),
                      Text(_Data.phone),
                    ],
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text("키"),
                      SizedBox(width: 50,),
                      Text(_Data.website),
                    ],
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text("몸무게"),
                      SizedBox(width: 50,),
                      Text(_Data.email),
                    ],
                  ),

                  SizedBox(height: 10,),

                  Text(
                    '재활 정보',
                    style: TextStyle(fontSize: 25),
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text("재활 시간 : "),
                      SizedBox(width: 50,),
                      DropdownButton(
                        hint: Text("선택"),
                        items: _valueList.map(
                            (String item) => DropdownMenuItem(
                                child: Text(item),
                              value: item,
                            ),
                        ).toList(),

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

                  SizedBox(height: 10,),

                  ElevatedButton(
                    child: Text(
                      '설정 완료',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: (){
                      DateTime startT = DateTime.now();
                      DateTime endT = startT.add(Duration(minutes: Time));

                      final formatter = DateFormat('EEEE, MMMM d, y, h, mm');
                      final startTime = formatter.format(startT);
                      final endTime = formatter.format(endT);

                      Services.sendDataToServer(
                          startTime,endTime,_Data.id
                      );

                      // Fluttertoast.showToast(msg: '$startTime');
                      // Fluttertoast.showToast(msg: '$endTime');
                    },
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

