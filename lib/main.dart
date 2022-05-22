import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm_new/screen/auth/auth_main_screen.dart';
import 'package:hrm_new/util/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: lightThemeData(context),
          darkTheme: darkThemeData(context),
          home: child,
        );
      },
      child:  AuthScreen(),
      designSize: const Size(392, 851),
    );
  }
}


