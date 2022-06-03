import 'package:get/get.dart';
import 'package:kalam/export.dart';
class Appbindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => VotingPageController());
    Get.lazyPut(() => CandidatePageController());
    Get.lazyPut(() => SettingsController());
  }

}