import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sso_cool/screen/patient_list/patient_list_event.dart';
import 'package:sso_cool/screen/patient_list/patient_list_view_model.dart';

class PatientList extends StatefulWidget {
  const PatientList({Key? key}) : super(key: key);

  @override
  State<PatientList> createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PatientListViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: Text(state.loading == false ? "환자 리스트" : "불러오는 중...."), // 일단 정상적으로 환자를 불러오는지만
        centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                          title: Text("검색"),
                          content: Container(
                            width: 500,
                            height: 200,
                            child: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: '환자 이름을 입력해주세요',
                                    ),
                                    keyboardType: TextInputType.text,

                                    controller: _controller,
                                    autocorrect: true,

                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return '다시 입력해주세요 !';
                                      }
                                      return null;
                                    },
                                    // null safety

                                    onSaved: (value) {
                                      searchText = value ?? ''; // 널값일 때 빈거 넣기
                                    }, // 검색값 저장 - searchText
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          _formKey.currentState!.save();
                                          viewModel.onEvent(PatientListEvent.searchPatientList(searchText));
                                          Fluttertoast.showToast(msg: '검색 완료');
                                          Navigator.pop(context);
                                        }

                                      },
                                      child: Text('검색하기')),
                                ],
                              ),
                            ),
                          ));
                    });
              },
              icon: Icon(Icons.search),
            ),
          ]
      ),

      body: ListView.separated(
        itemCount: state.patient.length,
        itemBuilder: (context, index) {

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(
                // 왼쪽 끝 아이콘
                Icons.account_circle_rounded,
                color: Colors.orange,
              ),
              trailing: Container(
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.orange),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  // 우측 끝 아이콘
                  child: Text('설정', style: TextStyle(color: Colors.orange),),
                  onPressed: () {
                    Navigator.pushNamed(context, '/patient_setting',
                        arguments: state.patient[index]);
                  },
                ),
              ),

              title: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Text("${state.patient[index].name}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
              subtitle: Text("${DateFormat('yyyy-MM-dd').format(state.patient[index].birthday)}"),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: const Divider(thickness: 1,color: Colors.grey,),
        ),
      ),
    );
  }
}
