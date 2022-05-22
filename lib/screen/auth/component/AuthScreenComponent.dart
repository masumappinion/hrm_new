import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hrm_new/util/ImageAssets.dart';

Widget authHeader() {
  return Column(
    children: [
      SvgPicture.asset(
        appIcon,
        width: 180.w,
      ),
       SizedBox(
        height: 16.h,
      ),
       Text(
        "Human Resource Mangement",
        style: TextStyle(color: Colors.white, fontSize: 14.sp),
      ),
    ],
  );
}

