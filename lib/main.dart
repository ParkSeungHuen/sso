import 'package:flutter/material.dart';
import 'package:sso_cool/screen/home.dart';
import 'package:sso_cool/screen/patient_setting.dart';
import 'package:sso_cool/screen/setting_screen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Future<void> main() async {
  // 파이어베이스 패키지 초기화
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //foreground
  FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(alert: true, badge: true, sound: true);
  //백그라운드 핸들러
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whlist in the foreground !');
    print('Message data : ${message.data}');

    if (message.notification != null) {
      print('Message also containes a notification: ${message.notification}');
    }
  });

  runApp(MyApp());
}

Future<void> backgroundHandler(RemoteMessage message) async { // 백그라운드에서 수신한 메시지 처리하는 곳
  print('Handling a background message ${message.messageId}');


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/Setting_Screen': (context) => Setting_Screen(),
      },
      title: "My App",

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: mainScreen(),
    );
  }
}

class mainScreen extends StatelessWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TabPage(), // 원래 TabPage()
      ),
    );
  }
}

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}


class _TabPageState extends State<TabPage> {

  int _selectedIndex = 0;
  List _pages = [Home(), Patient_Setting()];

  void initState() {
    init();
    super.initState();
  }

  //Device Token 발행
  Future getDeviceToken() async{
    FirebaseMessaging _firebaseMessage = FirebaseMessaging.instance;
    String? deviceToken = await _firebaseMessage.getToken();

    return (deviceToken == null) ? "" : deviceToken;
  }

  init() async {
    String deviceToken = await getDeviceToken();
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
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: 'Patient Setting'),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}