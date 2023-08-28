
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:http/http.dart' as http;
import 'package:sso_cool/data/data_source/car_api.dart';
import 'package:sso_cool/data/data_source/patient_api.dart';
import 'package:sso_cool/data/repository/car_api_repository_impl.dart';
import 'package:sso_cool/domain/repository/car_api_repository.dart';
import 'package:sso_cool/domain/repository/patient_api_repository.dart';
import 'package:sso_cool/screen/patient_list/patient_list.dart';
import 'package:sso_cool/screen/patient_list/patient_list_view_model.dart';
import 'package:sso_cool/screen/patient_setting/patient_setting_view_model.dart';

import '../data/repository/patient_api_repository_impl.dart';

// 1. Provider 전체
List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

// 2. 독립적인 객체
List<SingleChildWidget> independentModels = [
  Provider<http.Client>(
    create: (context) => http.Client(),
  ),

  Provider<CarApi>(
    create: (context) => CarApi(),
  )
];

// 3. 2번에 의존성 있는 객체
List<SingleChildWidget> dependentModels = [
  ProxyProvider<http.Client, PatientApi>( // http.client를 사용해서 PixabayApi타입을 return 하겠다
    update: (context, client, _) => PatientApi(client),
  ),
  ProxyProvider<PatientApi, PatientApiRepository>(
    update: (context, api, _) => PatientApiRepositoryImpl(api),
  ),

  ProxyProvider<CarApi, CarApiRepository>(
    update: (context, api, _) => CarApiRepositoryImpl(api),
  ),

];

// 4. ViewModels
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<PatientListViewModel>(
    create: (context) => PatientListViewModel(context.read<PatientApiRepository>()),
  ),
  ChangeNotifierProvider<PatientSettingViewModel>(
    create: (context) => PatientSettingViewModel(context.read<PatientApiRepository>(), context.read<CarApiRepository>()),
  ),
];
