import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kalam/controllers/export.dart';
import 'package:kalam/export.dart';

class VotingResultsPage extends GetView<VotingPageController>{
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VotingPageController>(
      builder: (_) => Scaffold(
        appBar: customAppBarVotingResults(),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 50.h
              ),
              Text(
                "Final Results",
                style: TextStyle(
                  fontSize: 48.sp,
                ),
              ),
              SizedBox(
                  height: 50.h
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 50.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1
                      )
                    ),
                    child: Text(
                      "Kalam ID",
                      style: TextStyle(
                        fontSize: 24.sp
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        )
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        GetStorage().read('kalam_ID'),
                        style: TextStyle(
                          fontSize: 24.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        )
                    ),
                    child: Text(
                      "",
                      style: TextStyle(
                        fontSize: 24.sp,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.375,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        )
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Total Voters",
                        style: TextStyle(
                          fontSize: 24.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.375,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        )
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Official Totals",
                        style: TextStyle(
                          fontSize: 24.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        )
                    ),
                    child: Text(
                      "Voters",
                      style: TextStyle(
                        fontSize: 24.sp,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.375,
                    height: 50.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1
                      )
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        GetStorage().read('total').toString(),
                        style: TextStyle(
                          fontSize: 24.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.375,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        )
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: controller.officialVotersVotesController..text = GetStorage().read('total').toString(),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        )
                    ),
                    child: Text(
                      "Electors",
                      style: TextStyle(
                        fontSize: 24.sp,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.375,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        )
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 24.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.375,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        )
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: controller.officicalElectoralVotesController..text = "1",
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        )
                    ),
                    child: Text(
                      "",
                      style: TextStyle(
                          fontSize: 24.sp
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        )
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed:() {
                          GetStorage().write('Voters_Saved',controller.officialVotersVotesController.text);
                          GetStorage().write('Electoral_Votes',controller.officicalElectoralVotesController.text);
                          Get.snackbar('Success', 'Data has been Saved Successfully');
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(
                            fontSize: 24.sp,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ),
      ),
    );
  }

}