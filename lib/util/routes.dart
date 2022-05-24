
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../screen/auth/auth_main_screen.dart';
class RoutesName{

  static const  auth='/';
}

class Routes{
  static final routes = [
    GetPage(name: RoutesName.auth, page: () => AuthScreen()),
/*    GetPage(name: '/home', page: () => HomeScreen()),
    GetPage(name: '/leave', page: () => LeaveDashBoardScreen()),
    GetPage(name: '/phone_book', page: () => PhoneBookScreen()),
    GetPage(name: '/tada_screen', page: () => TadaState())*/
  ];
}