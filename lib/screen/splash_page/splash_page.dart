import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kalam/controllers/splash_controller.dart';
import 'package:kalam/export.dart';

class SplashPage extends GetView<SplashController>{
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      initState: (_) {
        controller.updateProgress();
      },
      builder: (_) => Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/BG.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 201.h,
                  ),
                  Image.asset(
                    'assets/logo.png',
                    color: Colors.white,
                    fit: BoxFit.fill,
                    width: 144.55.w,
                    height: 205.78.h,
                  ),
                  SizedBox(
                    height: 275.h,
                  ),
                  Obx(() => Container(
                    width: 240.w,
                    height: 12.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: LinearProgressIndicator(
                          color: Colors.black.withOpacity(0.45),
                          valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(250, 250, 250, 1)),
                          value: controller.progressValue.value,
                        ),
                    ),
                  ),
                  ),
                  SizedBox(
                    height: 107.h,
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}