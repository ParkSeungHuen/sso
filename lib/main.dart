import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sso_cool/screen/components/tap_page.dart';
import 'package:sso_cool/screen/patient_list/patient_list.dart';
import 'package:sso_cool/screen/patient_setting/patient_setting.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';

import 'di/provider_setup.dart';

Future<void> main() async {
  // 파이어베이스 패키지 초기화
  List<SingleChildWidget> providers = globalProviders;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // 토큰 얻기
  print(await getDeviceToken());
  //foreground
  // FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(alert: true, badge: true, sound: true);
  //백그라운드 핸들러
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //   print('Got a message whlist in the foreground !');
  //   print('Message data : ${message.data}');
  //
  //   if (message.notification != null) {
  //     print('Message also containes a notification: ${message.notification}');
  //   }
  // });

  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.orange, // 배경색 및 버튼색으로 사용할 색상
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.orange,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.orange, // 기본 앱바 테마 : amber
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.orange, // 기본 버튼 테마 : amber

          ),
          textTheme: TextTheme( // 기본 텍스트 테마 : black
              bodySmall: TextStyle(
                color: Colors.black87,
              )
          ),

          fontFamily: 'Yeongdeok_Blueroad'


      ),

      initialRoute: '/',
      routes: {
        '/patient_list' : (context) => PatientList(),
        '/patient_setting' : (context) => PatientSetting(),
      },
      title: "My App",

      home: TabPage(),
    );
  }
}

Future<String?> getDeviceToken() async {
  FirebaseMessaging _firebaseMessage = FirebaseMessaging.instance;
  String? deviceToken = await _firebaseMessage.getToken();

  return deviceToken;
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("Handling a background message: ${message.messageId}");
}

