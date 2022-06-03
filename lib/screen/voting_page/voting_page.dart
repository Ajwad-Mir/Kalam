import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kalam/export.dart';

class VotingPage extends GetView<VotingPageController> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VotingPageController>(
      id: 'voter-screen',
      initState: (_) async{
        controller.onInit();
      },
      builder: (_) => Scaffold(
        key: _globalKey,
        appBar: customAppBarVoting(),
        body: FutureBuilder(
          future: controller.firstLoad(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (controller.votersList.contains('Empty')) {
                return Center(
                  child: Text(
                    "لا يوجد ناخبون مرتبطون بهذا المندوب",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                );
              } else {
                return GetBuilder<VotingPageController>(
                    builder: (_) => SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: SafeArea(
                        child: Obx(() => (controller.VotersearchFieldController.text.isEmpty &&
                            controller.searchvoterButtonPressed.isFalse)
                            ? Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 103.h,
                                ),
                                Image.asset(
                                  'assets/Search.png',
                                  width: 152.w,
                                  height: 152.h,
                                ),
                                SizedBox(
                                  height: 35.h,
                                ),
                                Container(
                                  width: 299.w,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "يرجى كتابة معرف الناخب في شريط البحث",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 35.h,
                                ),
                                SizedBox(
                                  width: 200.w,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        primary: Colors.white,
                                        backgroundColor: Colors.blue
                                    ),
                                    onPressed: () {
                                      controller.closeVotingPage.value = false;
                                      print(controller.closeVotingPage.value);
                                      controller.closeVotingPage.value = true;
                                      print(controller.closeVotingPage.value);
                                      Get.to(() => VotingResultsPage(),binding: Appbindings());
                                    },
                                    child: Text(
                                        "إغلاق قائمة الناخبين"
                                    ),
                                  ),
                                )
                              ],
                            ),
                            if (controller.isLoadMoreRunning.value == true)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 40),
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),

                            // When nothing else to load
                            if (controller.hasNextPages.value == false)
                              Container(
                                padding: const EdgeInsets.only(top: 30, bottom: 40),
                                color: Colors.amber,
                                child: Center(
                                  child: Text('You have fetched all of the content'),
                                ),
                              ),
                          ],
                        )
                            : Column(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                controller: controller.VotersListController,
                                physics: BouncingScrollPhysics(),
                                padding: EdgeInsets.symmetric(horizontal: 26.w,vertical: 20.h),
                                itemCount: controller.filteredvotersList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Container(
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
                                      child: ExpansionTile(
                                        controlAffinity: ListTileControlAffinity.leading,
                                        trailing: Text(
                                          "${controller.filteredvotersList[index]["SIGIL_NB"]}",
                                          textDirection: TextDirection.rtl,
                                        ),
                                        title: Text(
                                          "${controller.filteredvotersList[index]['FullName']}",
                                          textDirection: TextDirection.rtl,
                                        ),
                                        leading: Container(
                                          width: 1,
                                          height: 1,
                                        ),
                                        children: [
                                          Ink(
                                            width: 308.w,
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 22.h,
                                                ),
                                                IntrinsicHeight(
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                                    children: [
                                                      SizedBox(
                                                        width: 119.w,
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            SizedBox(
                                                              width: double.infinity,
                                                              child: Text(
                                                                "اسم",
                                                                textDirection: TextDirection.rtl,
                                                                style: TextStyle(
                                                                    fontSize: 17.sp,
                                                                    fontWeight: FontWeight.w600,
                                                                    color:
                                                                    Colors.black.withOpacity(0.5)),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            SizedBox(
                                                              width: double.infinity,
                                                              child: Text(
                                                                "${controller.filteredvotersList[index]['FullName']}",
                                                                textDirection: TextDirection.rtl,
                                                                style: TextStyle(
                                                                  fontSize: 20.sp,
                                                                  fontWeight: FontWeight.w400,
                                                                ),
                                                              ),
                                                            )
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
                                                                "اسم الطائف",
                                                                textDirection: TextDirection.rtl,
                                                                style: TextStyle(
                                                                    fontSize: 17.sp,
                                                                    fontWeight: FontWeight.w600,
                                                                    color:
                                                                    Colors.black.withOpacity(0.5)),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            SizedBox(
                                                              width: double.infinity,
                                                              child: Text(
                                                                "${controller.filteredvotersList[index]['TAIFA_NAME']}",
                                                                textDirection: TextDirection.rtl,
                                                                style: TextStyle(
                                                                  fontSize: 20.sp,
                                                                  fontWeight: FontWeight.w400,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 22.h,
                                                ),
                                                IntrinsicHeight(
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                                    children: [
                                                      SizedBox(
                                                        width: 119.w,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          children: [
                                                            SizedBox(
                                                              width: double.infinity,
                                                              child: Text(
                                                                "دِين",
                                                                textDirection: TextDirection.rtl,
                                                                style: TextStyle(
                                                                    fontSize: 15.sp,
                                                                    fontWeight: FontWeight.w600,
                                                                    color:
                                                                    Colors.black.withOpacity(0.5)),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            SizedBox(
                                                              width: double.infinity,
                                                              child: Text(
                                                                "${controller.filteredvotersList[index]['MAZHAB_NAME']}",
                                                                textDirection: TextDirection.rtl,
                                                                style: TextStyle(
                                                                  fontSize: 18.sp,
                                                                  fontWeight: FontWeight.w400,
                                                                ),
                                                              ),
                                                            )
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
                                                                "اسم الأم",
                                                                textDirection: TextDirection.rtl,
                                                                style: TextStyle(
                                                                    fontSize: 17.sp,
                                                                    fontWeight: FontWeight.w600,
                                                                    color: Colors.black.withOpacity(0.5)),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            SizedBox(
                                                              width: double.infinity,
                                                              child: Text(
                                                                "${controller.filteredvotersList[index]['MOTHER_NAME']}",
                                                                textDirection: TextDirection.rtl,
                                                                style: TextStyle(
                                                                  fontSize: 20.sp,
                                                                  fontWeight: FontWeight.w400,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 49.h,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 22.h,
                                                ),
                                                IntrinsicHeight(
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                                    children: [
                                                      SizedBox(
                                                        width: 119.w,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          children: [
                                                            SizedBox(
                                                              width: double.infinity,
                                                              child: Text(
                                                                "رقم سيجيل",
                                                                textDirection: TextDirection.rtl,
                                                                style: TextStyle(
                                                                    fontSize: 15.sp,
                                                                    fontWeight: FontWeight.w600,
                                                                    color:
                                                                    Colors.black.withOpacity(0.5)),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            SizedBox(
                                                              width: double.infinity,
                                                              child: Text(
                                                                "${controller.filteredvotersList[index]['SIGIL_NB']}",
                                                                textDirection: TextDirection.rtl,
                                                                style: TextStyle(
                                                                  fontSize: 18.sp,
                                                                  fontWeight: FontWeight.w400,
                                                                ),
                                                              ),
                                                            )
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
                                                                "تاريخ الولادة",
                                                                textDirection: TextDirection.rtl,
                                                                style: TextStyle(
                                                                    fontSize: 17.sp,
                                                                    fontWeight: FontWeight.w600,
                                                                    color: Colors.black.withOpacity(0.5)),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            SizedBox(
                                                              width: double.infinity,
                                                              child: Text(
                                                                "${controller.filteredvotersList[index]['BIRTHDATE']}",
                                                                textDirection: TextDirection.rtl,
                                                                style: TextStyle(
                                                                  fontSize: 20.sp,
                                                                  fontWeight: FontWeight.w400,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 49.h,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 22.h,
                                                ),
                                                Container(
                                                  width: 94.w,
                                                  height: 32.h,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(40.0),
                                                      border: Border.all(
                                                        color: Color.fromRGBO(5, 146, 218, 1),
                                                      )),
                                                  child: TextButton(
                                                    onPressed: () {
                                                      // controller.addVotedUser(
                                                      //   VoterID: controller.filteredvotersList[index]['Our_Elector_NB'].toString(),
                                                      //   KalamID: controller.filteredvotersList[index]['KALAM_ID'].toString(),
                                                      //   Added_Date: "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
                                                      //   WithUs: "1",
                                                      //   Representative_ID: GetStorage().read('Representative_ID').toString(),
                                                      // );
                                                    },
                                                    child: Text("Vote Now"),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20.h,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        )),
                      ),
                    ));
              }
            } else {
              return Container();
            }
          },
        ),
      )
    );
  }
}
