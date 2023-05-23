import 'package:flutter/material.dart';
import 'package:sso_cool/screen/components/tap_page.dart';
import 'package:sso_cool/screen/setting_car.dart';
import 'package:sso_cool/screen/setting_screen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';

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
        '/Setting_Car' : (context) => SettingCar(),
      },
      title: "My App",

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabPage(),
    );
  }
}
