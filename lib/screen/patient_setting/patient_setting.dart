import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sso_cool/screen/patient_setting/patient_setting_event.dart';
import 'package:sso_cool/screen/patient_setting/patient_setting_view_model.dart';

import '../../domain/model/patient/patient.dart';
import '../../domain/model/rehabilitation_car_send_data/rehabilitation_car_send_data.dart';

class PatientSetting extends StatefulWidget {
  const PatientSetting({Key? key}) : super(key: key);

  @override
  State<PatientSetting> createState() => _PatientSettingState();
}

class _PatientSettingState extends State<PatientSetting> {

  final _valueList = [
    '1',
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
  int rehabilitationTime = 0;
  int id = 0;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PatientSettingViewModel>();
    final state = viewModel.state;
    final data = ModalRoute.of(context)?.settings.arguments as Patient;


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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    '1. 환자 기본 정보',
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: Text("성명", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                            width: 100,
                          ),
                          Text(data.name),
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
                          Text('${data.age}'),
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
                          Text(data.gender),
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
                          Text('${DateFormat('yyyy-MM-dd').format(data.birthday)}'),
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
                          Text('${data.height}'),
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
                          Text('${data.weight}'),
                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 40,
                ),


                Container(
                  width: double.infinity,
                  child: Text(
                    '2. 재활 정보',
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),

                      Row(
                        children: [
                          SizedBox(
                            child: Text("재활 ID", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                            width: 100,
                          ),
                          Text('${data.id}'),
                        ],
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
                                rehabilitationTime = int.parse(value!);
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
                        height: 10,
                      ),

                    ],
                  ),
                ),
              ],
            ),

            Container(
              color: Colors.grey[200],
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                  '설정 완료',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () async {
                  DateTime startT = DateTime.now();
                  DateTime endT = startT.add(Duration(minutes: rehabilitationTime));

                  final formatter = DateFormat('EEEE, MMMM d, y, h, mm');
                  final startTime = formatter.format(startT);
                  final endTime = formatter.format(endT);

                  int rehabilitationInfoId = await viewModel.rehabilitationIdRequest(data.id!, rehabilitationTime);
                  // Fluttertoast.showToast(msg: "${rehabilitationInfoId}"); // 재활 id가 잘 넘어오는지 test
                  viewModel.onEvent(PatientSettingEvent.sendDataToCar(
                      RehabilitationCarSendData(
                          rehabilitationId: rehabilitationInfoId,
                          rehabilitationTime: rehabilitationTime))
                  );

                  // RehabilityIdSendData.sendDataToServer(_data.id!, time).then((value) {// 시작시간, 끝시간, 사용자 ID 서버로 전송
                  //   setState(() {
                  //     rehabilityId = value as int;
                  //     Fluttertoast.showToast(msg: '$rehabilityId');
                  //
                  //     RehabilityIdSendData.sendDataToCar(rehabilityId, time); // 보행보조차로 소켓통신 전송하는 코드
                  //     Navigator.pop(context); // 끄기
                  //   });
                  // });

                },
              ),
            )
          ],
        ),
      )
    );
  }
}
