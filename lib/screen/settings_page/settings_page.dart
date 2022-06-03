import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kalam/export.dart';

class SettingsPage extends GetView<SettingsController>{
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      builder: (_) => Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 450.h,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200.h,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: const [
                              Color.fromRGBO(58, 189, 255, 1),
                              Color.fromRGBO(5, 146, 218, 1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0),
                        )
                    ),
                    child: SafeArea(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 26.w,
                              ),
                              IconButton(
                                icon: Icon(Icons.arrow_back),
                                onPressed: () {
                                  Get.back();
                                },
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 31.74.w,
                              ),
                              Text(
                                "قلم",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26.sp,
                                    fontWeight: FontWeight.w600
                                )
                              ),
                            ],

                          ),
                          SizedBox(
                              height: 56.h
                          ),
                          Container(
                              width: 190.w,
                              alignment: Alignment.center,
                              child: Text(
                                'حساب تعريفي',
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 180.h,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26.w),
                      child: Container(
                        width: 308.w,

                        padding: EdgeInsets.symmetric(horizontal: 15.0.w,vertical: 15.0.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(86, 86, 86, 0.25),
                              blurRadius: 8
                            )
                          ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 22.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 26.0.w),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 119.w,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            "أسم الشخص",
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontSize: 17.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black.withOpacity(0.5)
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            GetStorage().read('FullName'),
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 49.w,
                                  ),
                                  SizedBox(
                                    width: 119.w,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            "معرف قلم",
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black.withOpacity(0.5)
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            GetStorage().read('kalam_ID'),
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 22.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 26.0.w),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 119.w,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            "اسم الاب",
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black.withOpacity(0.5)
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            GetStorage().read('Father_Name'),
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 49.w,
                                  ),
                                  SizedBox(
                                    width: 119.w,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            "أسم الأم",
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black.withOpacity(0.5)
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            GetStorage().read('Mother_Name').toString(),
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 49.h,
                                  ),
                                  Column(),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 22.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 26.0.w),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 119.w,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            "دِين",
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black.withOpacity(0.5)
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            GetStorage().read('Religion').toString(),
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 49.h,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: InkWell(
                onTap: () {
                  controller.LogoutOffApp();
                },
                child: Ink(
                  width: double.infinity,
                  height: 66.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.0),
                      boxShadow: const[
                        BoxShadow(
                            color: Color.fromRGBO(86, 86, 86, 0.25),
                            blurRadius: 8
                        )
                      ]
                  ),
                  child: ListTile(
                    title: Text("تسجيل خروج"),
                    subtitle: Text("تسجيل الخروج من هذا الحساب"),
                  )
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}