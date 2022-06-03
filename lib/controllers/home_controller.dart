import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kalam/export.dart';

class HomeController extends GetxController{
  var tabIndex = 0.obs;
  void changeTabIndex(int index) {
    tabIndex.value = index;
    if(tabIndex.value == 0){
      update(['voter-screen'],true);
    }
    else if(tabIndex.value == 1){
      update(['candidate-screen'],true);
    }
  }

  getLoggedInUser() async{
    var input = {
      'kalam_id': GetStorage().read('kalam_ID')
    };
    print(input);
    var response = await http.post(
        Uri.parse(appConstants().APIURL + 'all-representative'),
        headers: {
          'Accept': 'application/json',
          'Authorization': GetStorage().read('token'),
        },
        body: input
    );

    var output = jsonDecode(response.body);
    var data = output['data'];
    print(data);
    GetStorage().write('FullName',"${data[0]['REPRESENTATIVE_FIRST_NAME']} ${data[0]['REPRESENTATIVE_LAST_NAME']}");
    GetStorage().write('Father_Name',"${data[0]['REPRESENTATIVE_FATHER_NAME']}");
    GetStorage().write('Mother_Name',"${data[0]['REPRESENTATIVE_MOTHER_NAME']}");
    GetStorage().write('Religion',"${data[0]['MAZHAB_ID']}");
    GetStorage().write('Representative_ID',data[0]['REPRESENTATIVE_ID']);
    print(GetStorage().read('kalam_ID'));
    print(GetStorage().read('FullName'));
    print(GetStorage().read('Father_Name'));
    print(GetStorage().read('Mother_Name'));
    print(GetStorage().read('Religion'));
    print(GetStorage().read('Representative_ID'));
  }

  showTimeWarning() {
    print(DateTime.now().hour);
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 5
            )
          ]
      ),
      child: AlertDialog(
        elevation: 10,
        actionsPadding: EdgeInsets.all(16.0),
        insetPadding: EdgeInsets.all(16.0),
        contentPadding: EdgeInsets.all(32.0),
        titlePadding: EdgeInsets.all(32.0),
        title: Text("Sorry",style: TextStyle(
          fontSize: 24.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),),
        backgroundColor: Colors.blueAccent,
        content: Text("You Cannot Access The Candidates List After 6PM.",style: TextStyle(
          fontSize: 20.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(
                color: Colors.black,
                width: 1.5
            )
        ),
        actions: [
          Container(
            width: 100.w,
            height: 50.h,
            child: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(
                      color: Colors.white,
                      width: 1.0
                  )
              ),
              child: Text("OK",style: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.white
              ),),
              onPressed: () {
                tabIndex.value = 0;
              },
            ),
          )
        ],
      ),
    );
  }
}