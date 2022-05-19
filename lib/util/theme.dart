import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: inputDecorationTheme(),
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: black),
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: inputDecorationTheme(),
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: black),
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),

  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(18.r),
    borderSide: const BorderSide(color: Colors.white),
    gapPadding: 10.h,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: outlineInputBorder,
    hintStyle: const TextStyle(color: gray),
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);