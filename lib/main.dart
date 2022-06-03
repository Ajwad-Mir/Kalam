import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kalam/export.dart';


void main() async{

  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428,926),
      builder: (BuildContext context) => GetMaterialApp(
        title: 'تطبيق القلم',
        initialBinding: Appbindings(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: Routes.routes,
      ),
    );
  }
}


