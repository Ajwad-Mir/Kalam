import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:kalam/export.dart';

class customAppBarVoting extends GetView<VotingPageController> implements PreferredSizeWidget{
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
              Container(
                width: 328.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0)
                ),
                child: TextFormField(
                  controller: controller.VotersearchFieldController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),textDirection: TextDirection.rtl,
                  onChanged: (value) {
                    if(value.isEmpty){
                      controller.searchvoterButtonPressed.value = false;
                    }
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 15.0.w,vertical: 15.0.h),
                    border: InputBorder.none,
                    hintText: "أدخل معرف الناخب هنا",
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(191, 191, 191, 1)
                    ),
                  ),
                ),              
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 328.w,
                child: ElevatedButton(
                  child: Text(
                    'أبحث',
                    style: TextStyle(
                      color:Color.fromRGBO(58, 189, 255, 1)
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  ),
                  onPressed: (){
                    if(controller.VotersearchFieldController.text.isEmpty){
                      controller.searchvoterButtonPressed.value = false;
                      log("Pressed");
                      controller.firstLoad();
                    }
                    else if(controller.VotersearchFieldController.text.isNotEmpty){
                      controller.searchvoterButtonPressed.value = true;
                      log("Pressed");
                      controller.filterList(controller.VotersearchFieldController.text.toString());
                    }
                  },
                ),
              ),
              SizedBox(
                height: 50.h,
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