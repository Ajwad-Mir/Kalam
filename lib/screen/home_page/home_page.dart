import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalam/export.dart';

class HomePage extends GetView<HomeController>{

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      initState: (_) {
        controller.getLoggedInUser();
      },
      builder: (_) => Scaffold(
        body: Obx(() => IndexedStack(
          index: controller.tabIndex.value,
          children: [
            Obx(() => (VotingPageController().closeVotingPage.isTrue) ? VotingResultsPage() : VotingPage()),
            CandidatesPage(),
          ],
        )),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.tabIndex.value,
            onTap: (index) => controller.changeTabIndex(index),
            backgroundColor: Colors.blue,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const[
              BottomNavigationBarItem(icon: Icon(Icons.how_to_vote),label: "الأقتراع"),
              BottomNavigationBarItem(icon: Icon(Icons.supervisor_account_sharp),label: "الفرز"),
            ],
          ),
        ),
      ),
    );
  }

}