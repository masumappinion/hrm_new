import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrm_new/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'component/AuthScreenComponent.dart';


class AuthScreen extends StatefulWidget {
  static const routeName = '/auth_screen';

  @override
  AuthScreenState createState() => AuthScreenState();
}

class AuthScreenState extends State<AuthScreen> {
  var _passwordVisible = false;
  void _togglePasswordVisible() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  var userNameController = TextEditingController();
  var userPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Expanded(
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      alignment: Alignment.center,
                      decoration:  const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                kPrimaryColor,
                                lightBlue,
                              ])),
                      child: SafeArea(
                        child: Column(
                          children: [
                            const Expanded(flex: 2, child: SizedBox()),
                            authHeader(),
                            const Expanded(flex: 3, child: SizedBox()),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 36.w),
                              child: TextFormField(
                                //  textAlign: TextAlign.center,
                                  controller: userNameController,
                                  decoration: const InputDecoration(
                                    hintText: "Phone No./Email",
                                    fillColor: Colors.white,
                                    filled: true,
                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                  )),
                            ),
                             SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 36.w),
                              child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  obscureText: !_passwordVisible,
                                  controller: userPassController,

                                  //  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                      fillColor: Colors.white,
                                      filled: true,
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _passwordVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: gray,
                                        ),
                                        onPressed: () {
                                          _togglePasswordVisible();
                                        },
                                      ))),
                            ),

                            const SizedBox(
                              height: 24,
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 36.w),
                              child: Container(
                                height: 48.h,
                                width: 156.w,
                                margin:  EdgeInsets.only(bottom: 16.h),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(deepBlue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30.0.r),

                                          ),
                                      )
                                    ),

                                  onPressed: () {
                                    // Get.to(HomeScreen(),transition: Transition.rightToLeft,duration: Duration(seconds: 2));
                                  },
                                  child:  Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 1.5.w,
                                      fontSize: 14.sp
                                    ),
                                  ),
                                ),
                              ),
                            ),

                             Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,fontSize: 16.sp),
                            ),
                             SizedBox(
                              height: 24.h,
                            ),

                            const Expanded(flex: 5, child: SizedBox()),
                          ],
                        ),
                      ))),
            ],
          ),
        ));

  }
}
