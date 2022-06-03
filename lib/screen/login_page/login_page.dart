import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kalam/export.dart';

class LoginPage extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {

    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 360.w,
                      height: 342.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100.0),
                          bottomRight: Radius.circular(100.0),
                        ),
                        gradient: LinearGradient(colors: const [
                          Color.fromRGBO(58, 189, 255, 1),
                          Color.fromRGBO(5, 146, 218, 1),
                        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 58.h,
                          ),
                          SizedBox(
                            width: 82.89.w,
                            height: 118.h,
                            child: Image.asset(
                              'assets/logo.png',
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 60.h,
                          ),
                          Container(
                            width: 186.w,
                            height: 46.h,
                            alignment: Alignment.center,
                            child: Text(
                              "!أهلا بك~",
                              style: TextStyle(
                                fontSize: 38.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 60.h,
                    ),
                    SizedBox(
                      width: 278.w,
                      height: 38.h,
                      child: TextFormField(
                        controller: controller.phoneController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                            hintText: "أدخل رقم الهاتف",
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(191, 191, 191, 1)
                            ),
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                            suffixIcon: SizedBox(
                              width: 17.w,
                              height: 17.h,
                              child: Icon(
                                Icons.phone,
                                color: Color.fromRGBO(0, 67, 101, 1),
                              ),
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    SizedBox(
                      width: 278.w,
                      height: 38.h,
                      child: TextFormField(
                        controller: controller.dobController,
                        readOnly: true,
                        showCursor: false,
                        onTap: () {
                          controller.selectYear(context);
                        },
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                            hintText: "حدد السنة",
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(191, 191, 191, 1)),
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                            suffixIcon: SizedBox(
                              width: 17.w,
                              height: 15.89.h,
                              child: Icon(
                                Icons.calendar_month,
                                color: Color.fromRGBO(0, 67, 101, 1),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    SizedBox(
                      width: 278.w,
                      height: 38.h,
                      child: TextFormField(
                        controller: controller.nbrController,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                            hintText: "أدخل رقم المصادقة",
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(191, 191, 191, 1)),
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                            suffixIcon: SizedBox(
                              width: 17.w,
                              height: 15.89.h,
                              child: Icon(
                                Icons.vpn_key,
                                color: Color.fromRGBO(0, 67, 101, 1),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    Container(
                      width: 278.w,
                      height: 46.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(72.0),
                          border: Border.all(
                            color: Color.fromRGBO(5, 146, 218, 1),
                          )),
                      child: TextButton(
                        onPressed: () {
                          if (controller.phoneController.text.isEmpty &&
                              controller.dobController.text.isEmpty) {
                            Get.snackbar('Error', 'Phone and Year of Birth is Missing');
                          } else if (controller.phoneController.text.isEmpty &&
                              controller.dobController.text.isNotEmpty) {
                            Get.snackbar('Error', 'Phone is Missing');
                          } else if (controller.phoneController.text.isNotEmpty &&
                              controller.dobController.text.isEmpty) {
                            Get.snackbar('Error', 'Year of Birth is Missing');
                          } else if (controller.phoneController.text.isNotEmpty &&
                              controller.dobController.text.isNotEmpty &&
                              controller.findAge(controller.dobController.text.substring(0,4)) < 18) {
                            Get.snackbar('Error', 'Year of Birth is Missing');
                          }
                          else if (controller.phoneController.text.isNotEmpty &&
                              controller.dobController.text.isNotEmpty &&
                              controller.findAge(controller.dobController.text.substring(0,4)) >= 18) {
                            controller.sendOTP();
                          }
                        },
                        child: Text(
                          "تسجيل الدخول",
                          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600, color: Colors.blue),
                        ),
                        style: TextButton.styleFrom(primary: Colors.blue, splashFactory: InkRipple.splashFactory),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
