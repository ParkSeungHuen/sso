import 'package:flutter/material.dart';
import 'package:sso_cool/screen/home.dart';
import 'package:sso_cool/screen/patient_setting.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}


class _TabPageState extends State<TabPage> {

  int _selectedIndex = 0;
  List<Widget> _pages = [Home(), Patient_Setting()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _pages[_selectedIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: '메인 화면'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: '환자 설정'),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void initState() {
    init();
    super.initState();
  }

  //Device Token 발행
  Future<String?> getDeviceToken() async {
    FirebaseMessaging _firebaseMessage = FirebaseMessaging.instance;
    String? deviceToken = await _firebaseMessage.getToken();

    return deviceToken;
  }

  init() async {
    String? deviceToken = await getDeviceToken();
    print ("##### PRINT DEVICE TOKEN TO USE FOR PUSH NOTIFICATION #####");
    print("${deviceToken}");
    print("###################################################");

    //클릭했을 때
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage remoteMessage) {
      String? title = remoteMessage.notification!.title;
      String? description = remoteMessage.notification!.body;

      Alert(
        context: context,
        type: AlertType.error,
        title: title,
        desc: description,
        buttons: [
          DialogButton(
            child: Text(
              "COOL",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();

    });

  }
}