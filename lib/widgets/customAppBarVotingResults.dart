import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:kalam/export.dart';

class customAppBarVotingResults extends GetView<VotingPageController> implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VotingPageController>(
      builder: (_) => Container(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        Get.to(()=>SettingsPage(),binding: Appbindings());
                      },
                      color: Colors.white,
                    ),                    
                    SizedBox(
                      width: 82.w,
                      height: 40.h,
                      child: Image.asset(
                        'assets/logo-h.png',
                        color: Colors.white,
                      )
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 260.h);

}