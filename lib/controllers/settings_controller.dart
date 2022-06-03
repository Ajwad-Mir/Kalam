import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:kalam/export.dart';

class SettingsController extends GetxController{
  var darkMode = false.obs;

  var kalamID = "".obs;
  var fullName = "".obs;
  var fatherName = "".obs;
  var motherName = "".obs;
  var Religion = "".obs;

  void LogoutOffApp() {
    GetStorage().write('isLoggedIn', false);
    GetStorage().write('kalam_ID','');
    GetStorage().write('phone','');
    GetStorage().write('dob', '');
    GetStorage().write('token', '');
    GetStorage().write('otp', '');
    Get.offAll(() => LoginPage(), binding: Appbindings());
  }

}