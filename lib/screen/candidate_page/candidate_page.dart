import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kalam/export.dart';

class CandidatesPage extends GetView<CandidatePageController> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CandidatePageController>(
        id: 'candidate-screen',
        initState: (_) async{
          await controller.fetchElectorals();
          controller.setOpenStandard();
        },
        builder: (_) =>
            Scaffold(
              key: _globalKey,
              appBar: customAppBarCandidate(),
              body: Stack(
                  children: [
                    Obx(() =>
                        Visibility(
                          visible: (controller.isBeforeClosing.isFalse && controller.isAfterOpening.isFalse)
                              ? false
                              : true,
                          child: Center(
                            child: Container(
                              width: 308.w,
                              height: 192.h,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(5, 146, 218, 1),
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.60),
                                      blurRadius: 8,
                                      spreadRadius: double.infinity,
                                    )
                                  ]
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 15.h
                                  ),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: Text(
                                        "إنذار",
                                        style: TextStyle(
                                          fontSize: 32.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        )
                                    ),
                                  ),
                                  SizedBox(
                                      height: 15.h
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      padding: EdgeInsets.symmetric(vertical: 35.0.h, horizontal: 19.0.w),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                    ),
                    Obx(() => Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Column(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: controller.ElectoralList.length,
                                  itemBuilder: (BuildContext context, int Electoral_Index) {
                                    return Padding(
                                      padding: EdgeInsets.only(top: 20.0.h, right: 26.w, left: 26.w),
                                      child: Ink(
                                        width: 308.w,
                                        decoration: BoxDecoration(
                                            color: controller.getColorsByList(Electoral_Index),
                                            borderRadius: BorderRadius.circular(6.0),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black.withOpacity(0.1),
                                                  blurRadius: 8
                                              )
                                            ]
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(6.0),
                                          child: ExpansionTile(
                                            textColor: Colors.white,
                                            controlAffinity: ListTileControlAffinity.leading,
                                            iconColor: Colors.white,
                                            collapsedIconColor: Colors.white,
                                            collapsedTextColor: Colors.white,
                                            title: Text(
                                              "${controller.ElectoralList[Electoral_Index]['Electoral_List_Name']}",
                                              textDirection: TextDirection.rtl,
                                            ),
                                            trailing: Text(
                                              "${controller.ElectoralList[Electoral_Index]['Electoral_List_ID']}",
                                              textDirection: TextDirection.rtl,
                                            ),
                                            leading: Container(
                                              width: 1,
                                              height: 1,
                                            ),
                                            children: [
                                              ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: controller.CandidatesList.length,
                                                itemBuilder: (BuildContext context, int Candidates_Index) {
                                                  if(controller.CandidatesList[Candidates_Index]['Electoral_List_ID'] == controller.ElectoralList[Electoral_Index]['Electoral_List_ID']) {
                                                    return Padding(
                                                      padding: EdgeInsets.only(top: 20.0.h, right: 26.w, left: 26.w),
                                                      child: Ink(
                                                        width: 308.w,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(6.0),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                  color: Color.fromRGBO(86, 86, 86, 0.25),
                                                                  blurRadius: 8
                                                              )
                                                            ]
                                                        ),
                                                        child: ListTile(
                                                          title: Text(
                                                            "${controller.CandidatesList[Candidates_Index]['CANDIDATE_FULL_NAME']}",
                                                              textDirection: TextDirection.rtl,
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 18.sp,
                                                                fontWeight: FontWeight.w400,
                                                            ),
                                                          ),
                                                          leading: Text(
                                                            "${controller.CandidatesList[Candidates_Index]['CANDIDATE_ID']}",
                                                            textDirection: TextDirection.rtl,
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 18.sp,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  else{
                                                    return Container();
                                                  }
                                                },
                                              ),
                                              SizedBox(
                                                  height: 20.h
                                              ),
                                              Ink(
                                                width: 308.w,
                                                child: TextButton(
                                                  child: Text(
                                                    "لا يوجد مرشح مفضل",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20.sp,
                                                    ),
                                                  ),
                                                  style: TextButton.styleFrom(
                                                    primary: Colors.black,
                                                    backgroundColor: Colors.white,

                                                  ),
                                                  onPressed: () {},
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                    )
                  ]
              ),
            )
    );
  }
}
