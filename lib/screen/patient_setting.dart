import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sso_cool/screen/bin/service.dart';
import 'package:sso_cool/screen/bin/user.dart';
import 'package:hangul/hangul.dart';

class Patient_Setting extends StatefulWidget {
  @override
  State<Patient_Setting> createState() => _Patient_SettingState();
}

class _Patient_SettingState extends State<Patient_Setting> {
  List<User> _user = <User>[];
  bool loading = false;
  String? searchText;

  late List<User> _filteredItems = <User>[];

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Services.getInfo().then((value) {
      setState(() {
        _user = value;
        _filteredItems = value;
        loading = true;
      });
    });
  }

  void _refresh() {
    setState(() {});
  }

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(loading ? 'PatientList' : 'Loading...'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                          title: Text("검색"),
                          content: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: '환자 이름을 입력해주세요',
                                  ),
                                  keyboardType: TextInputType.text,

                                  // inputFormatters: [
                                  //   FilteringTextInputFormatter.allow(
                                  //     RegExp("[ㄱ-ㅎㅏ-ㅣ가-힣]"),
                                  //   )
                                  // ],

                                  controller: _controller,
                                  autocorrect: true,

                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return '다시 입력해주세요 !';
                                    }
                                    return null;
                                  }, // null safety

                                  onSaved: (value) {
                                    searchText = value;
                                  }, // 검색값 저장 - searchText
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();
                                        Fluttertoast.showToast(msg: '검색 완료');
                                      }

                                      _filteredItems = _user.where((item) => item.name.toLowerCase().contains(searchText!.toLowerCase())).toList();
                                      _refresh();
                                    },
                                    child: Text('검색하기')),
                              ],
                            ),
                          ));
                    });
              },
              icon: Icon(Icons.search),
            ),
          ]),


      body: ListView.separated(
        itemCount: _filteredItems.length,
        itemBuilder: (context, index) {
          User user = _filteredItems[index];

          // if (searchText != null) {
          //   if (searchText!.isNotEmpty &&
          //       !_user[index].name.toLowerCase().contains(searchText!.toLowerCase())) {
          //     return SizedBox.shrink();
          //   }
          // }

          return ListTile(
            leading: const Icon(
              // 왼쪽 끝 아이콘
              Icons.account_circle_rounded,
              color: Colors.blue,
            ),
            trailing: FloatingActionButton(
              // 우측 끝 아이콘
              shape: Border.symmetric(),
              child: Text('Setting'),
              onPressed: () {
                Navigator.pushNamed(context, '/Setting_Screen',
                    arguments: _filteredItems[index]);
              },
            ),
            title: Text("${user.name}\n${user.email}"),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}