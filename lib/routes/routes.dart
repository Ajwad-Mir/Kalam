import 'package:get/get.dart';
import '../export.dart';

class Routes{

  static final routes = [
    GetPage(name: '/', page: () => SplashPage()),
    GetPage(name: '/login', page: () => LoginPage()),
    GetPage(name: '/home', page: () => HomePage()),
    GetPage(name: '/voters', page: () => VotingPage()),
    GetPage(name: '/candidates', page: () => CandidatesPage()),
    GetPage(name: '/settings', page: () => SettingsPage()),
  ];
}