
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../screen/auth_main_screen.dart';

class Routes{
  static final routes = [
    GetPage(name: '/', page: () => AuthScreen()),
/*    GetPage(name: '/home', page: () => HomeScreen()),
    GetPage(name: '/leave', page: () => LeaveDashBoardScreen()),
    GetPage(name: '/phone_book', page: () => PhoneBookScreen()),
    GetPage(name: '/tada_screen', page: () => TadaState())*/
  ];
}