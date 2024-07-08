import 'package:e_com_app_outpix/consts/consts.dart';
import 'package:e_com_app_outpix/views/auth_screen/login_screen.dart';
import 'package:e_com_app_outpix/views/auth_screen/test.dart';
import 'package:e_com_app_outpix/widgets_common/applogo_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  changeScreen()
  {
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(() => const LoginScreen());
    });
  }
  @override
  void initState(){
    changeScreen();
    super.initState();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children:
              [
                Align(alignment: Alignment.topLeft, child : Image.asset(icSplashBg,width: 300)),
                  20.heightBox,
                  applogoWidget(),
                  10.heightBox,
                  appname.text.fontFamily(bold).size(22).white.make(),
                  5.heightBox,
                  appversion.text.white.make(),
                  Spacer(),
                  credits.text.white.fontFamily(semibold).make(),
                  30.heightBox,
              ]

        ),
      ),
    );
  }
}

