import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:kalam/constants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

import '../export.dart';

class VotingPageController extends GetxController {
  final TextEditingController VotersearchFieldController = TextEditingController();
  final TextEditingController officialVotersVotesController = TextEditingController();
  final TextEditingController officicalElectoralVotesController = TextEditingController();
  late ScrollController VotersListController;

  var closeVotingPage = false.obs;
  late Box votersBox;
  late Box VotedVotersBox;
  var index = 0.obs;
  var pageNumber = 1.obs;
  RxList votersList = [].obs;
  RxList filteredvotersList = [].obs;
  var voteButtonPressed = false.obs;
  var searchvoterButtonPressed = false.obs;
  var isFirstLoadingRunning = false.obs;
  var isLoadMoreRunning = false.obs;
  var hasNextPages = true.obs;


  @override
  void onInit() {
    firstLoad();
    VotersListController = ScrollController()..addListener(loadMore);
    super.onInit();
  }



  firstLoad() async {
    pageNumber = 1.obs;
    print(GetStorage().read('token').toString());
    print(GetStorage().read('kalam_ID').toString());
    var body = {
      'kalam_id': GetStorage().read('kalam_ID').toString(),
    };
    var response = await http.post(Uri.parse(appConstants().APIURL + 'all-voter?page=$pageNumber'),
        headers: {'Accept': 'application/json', 'Authorization': GetStorage().read('token')}, body: body);
    var output = jsonDecode(response.body);
    print(output.toString());
    var totalData = output['data'];
    var total = totalData['total'];
    print(total);
    GetStorage().write('total',total);
    var pageData = totalData['data'];
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    votersBox = await Hive.openBox('Voters');

    await votersBox.clear();
    for (var item in pageData) {
      votersBox.add(item);
    }

    var DataMap = votersBox.values.toList();
    if (DataMap.isEmpty) {
      votersList.add('Empty');
    } else {
      votersList.value = DataMap;
    }
    isFirstLoadingRunning.value = false;
  }

  void loadMore() async {
    if (hasNextPages.isTrue &&
        isFirstLoadingRunning.isFalse &&
        isLoadMoreRunning.isFalse &&
        VotersListController.position.extentAfter < 300) {
      isLoadMoreRunning.value = true;
      pageNumber.value += 1;
      try {
        var body = {
          'kalam_id': GetStorage().read('kalamID').toString(),
        };
        var response = await http.post(Uri.parse(appConstants().APIURL + 'all-voter?page=$pageNumber'),
            headers: {'Accept': 'application/json', 'Authorization': GetStorage().read('token')}, body: body);
        var output = jsonDecode(response.body);
        print(output);
        var totalData = output['data'];
        var pageCount = totalData['current_page'];
        print(pageCount);
        var pageData = totalData['data'];
        final List fetchedItems = pageData;
        if (fetchedItems.isNotEmpty) {
          var dir = await getApplicationDocumentsDirectory();
          Hive.init(dir.path);
          votersBox = await Hive.openBox('Voters');

          for (var item in fetchedItems) {
            votersBox.add(item);
          }

          var DataMap = votersBox.values.toList();
          votersList.clear();
          if (DataMap.isEmpty) {
            votersList.add('Empty');
          } else {
            votersList.addAll(DataMap);
          }
        } else {
          hasNextPages.value = false;
        }
      } catch (err) {
        print('Error: err');
      }

      isLoadMoreRunning.value = false;
    }
  }

  filterList(String VoterID) async {

    var body = {'KALAM_ID': GetStorage().read('kalam_ID').toString(), 'Our_Elector_NB': VoterID};
    var response = await http.post(
      Uri.parse(appConstants().APIURL + 'voter-elector-nb'),
      headers: {
        'Accept': 'application/json',
        'Authorization': GetStorage().read('token')
      },
      body: body
    );
    var output = jsonDecode(response.body);
    var data = output['data'];
    print(data);
    var voterData = data['voter kalam_id and elector_nb'];
    filteredvotersList.value = voterData;
  }

  // void addVotedUser({required String VoterID, required String KalamID, required String Added_Date, required String WithUs, required String Representative_ID}) async{
  //   var dir = await getApplicationDocumentsDirectory();
  //   Hive.init(dir.path);
  //   VotedVotersBox = await Hive.openBox('Voted_Voters');
  //   var data = {
  //     "Voter ID": VoterID,
  //     'Kalam ID': KalamID,
  //     "ADDED DATE": Added_Date,
  //     "WITH US": WithUs,
  //     "REPRESENTATIVE ID": Representative_ID,
  //   };
  //
  //   if(VotedVotersBox.isEmpty){
  //     VotedVotersBox.add(data);
  //   }
  //   else{
  //     VotedVotersBox.toMap().forEach((key, value) {
  //       if(VotedVotersBox.toMap().containsValue(data)){
  //         log("Already Exists");
  //       }
  //       else{
  //         log("Does Not Exist");
  //         VotedVotersBox.put(index.value, data);
  //         index.value++;
  //       }
  //     });
  //   }
  //   log(VotedVotersBox.toMap().toString());
  // }

  // void ClearBox() async{
  //   var dir = await getApplicationDocumentsDirectory();
  //   Hive.init(dir.path);
  //   VotedVotersBox = await Hive.openBox('Voted_Voters');
  //   await VotedVotersBox.clear();
  //   index.value = 0;
  // }
  //
  // checkVoted() async {
  //   var dir = await getApplicationDocumentsDirectory();
  //   Hive.init(dir.path);
  //   VotedVotersBox = await Hive.openBox('Voted_Voters');
  // }
}
