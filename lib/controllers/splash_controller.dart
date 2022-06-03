import 'dart:async';
import 'dart:math';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../export.dart';

class SplashController extends GetxController{

  var loading = false.obs;
  var progressValue = 0.0.obs;

  void updateProgress() {
    const oneSec = Duration(seconds: 1, milliseconds: 500);
    Timer.periodic(oneSec, (Timer t) {
      progressValue.value += 0.25;

      if (progressValue.value.toStringAsFixed(1) == '1.0') {
        loading.value = false;
        t.cancel();
        var check = GetStorage().read('token');
        print(check);
        if(check != null){
          Get.off(() => HomePage());
        }
        else{
          Get.off(() => LoginPage());
        }
      }
    });
  }
}