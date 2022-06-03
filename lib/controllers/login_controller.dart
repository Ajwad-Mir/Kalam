import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:kalam/export.dart';

class LoginController extends GetxController {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController nbrController = TextEditingController();


  sendOTP() async {
    GetStorage().write('Birthyear', dobController.text.substring(0, 4));
    GetStorage().write('Mobile', phoneController.text);
    GetStorage().write('AUTENTICATION_NBR',nbrController.text);

    var input = {
      'REPRESENTATIVE_BIRTHYEAR': dobController.text.substring(0, 4),
      'CONTACT_MOBILE': phoneController.text,
      'AUTENTICATION_NBR': nbrController.text
    };
    print(input);
    var request = await http.post(
        Uri.parse(appConstants().APIURL + 'login'),
        headers: {'Accept': 'application/json', 'Authorization': ''},
        body: input
    );

    var body = jsonDecode(request.body);
    var status = body['Status'];
    if(status == 'Success'){
      var data = body['success'];
      var kalam_id = data['user kalam id'];
      var token = data['token'];
      print(data);
      GetStorage().write('token',token);
      GetStorage().write('kalam_ID', kalam_id);
      Get.off(() => HomePage(), binding: Appbindings());
    }
  }

  void selectYear(BuildContext context) async {
    final year = DateTime.now().year;
    String selectedYear = "";

    showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return AlertDialog(
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 22.0.h),
              child: Center(child: Text("اختر السنة")),
            ),
            titleTextStyle: TextStyle(
              color: Color.fromRGBO(5, 146, 218, 1),
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
            titlePadding: EdgeInsets.symmetric(horizontal: 10.0),
            contentPadding: EdgeInsets.zero,
            content: Container(
              width: 308.w,
              height: 312.h,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(6.0)
              ),
              child: Theme(
                data: ThemeData(
                    backgroundColor: Color.fromRGBO(0, 92, 120, 1.0)
                ),
                child: YearPicker(
                  selectedDate: DateTime(year),
                  firstDate: DateTime(year - 100),
                  lastDate: DateTime(year - 18),
                  onChanged: (value) {
                    selectedYear = value.toString().substring(0, 4);
                    int age = findAge(selectedYear);
                    String output = "$selectedYear ($age)";
                    dobController.text = output;
                    Navigator.of(context).pop();
                  },
                ),
              ),
            )
        );
      },
    );
  }

  int findAge(String selectedYear) {
    int currYear = DateTime
        .now()
        .year;
    return (currYear - int.parse(selectedYear));
  }
}