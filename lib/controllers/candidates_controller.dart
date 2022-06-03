import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';

class CandidatePageController extends GetxController{
  final isBeforeClosing = false.obs;
  final isAfterOpening = false.obs;
  late Box candidatesBox;
  late Box electoralsBox;
  final ElectoralList = [].obs;
  final CandidatesList = [].obs;
  final warningVisibility = false.obs;

  Future<bool> fetchCandidates() async{
    var response = await http.get(
      Uri.parse(appConstants().APIURL +  'all-candidate'),
      headers: {'Accept': 'application/json', 'Authorization': '${GetStorage().read('token')}'},
    );

    var body = jsonDecode(response.body);
    print(body);
    var data = body['data'];

    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    candidatesBox = await Hive.openBox('candidates');
    await candidatesBox.clear();
    for(var item in data){
      candidatesBox.add(item);
    }
    showCandidates();
    return Future.value(true);
  }

  Future<bool> fetchElectorals() async{
    fetchCandidates();
    var response = await http.get(
      Uri.parse(appConstants().APIURL +  'all-electoral-list'),
      headers: {'Accept': 'application/json', 'Authorization': '${GetStorage().read('token')}'},
    );

    var body = jsonDecode(response.body);
    print(body);
    var data = body['data'];

    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    electoralsBox = await Hive.openBox('electorals');
    await electoralsBox.clear();
    for(var item in data){
      electoralsBox.add(item);
    }
    showElectorals();
    return Future.value(true);
  }


  showElectorals() {
    var ElectoralMap = electoralsBox.toMap().values.toList();
    if(ElectoralMap.isEmpty){
      ElectoralList.add('empty');
    }else{
      ElectoralList.value = ElectoralMap;
    }
  }

  showCandidates() {
    var candidatesMap = candidatesBox.toMap().values.toList();
    if(candidatesMap.isEmpty){
      CandidatesList.add('empty');
    }else{
      CandidatesList.value = candidatesMap;
    }
  }

  setOpenStandard() {
    if(DateTime.now().hour >= 9 && (DateTime.now().hour <= 12 && DateTime.now().minute == 0)){
      isBeforeClosing.value = true;
      isAfterOpening.value = true;
      warningVisibility.value = true;
    }
  }

  Color getColorsByList(int index) {
    if(ElectoralList[index]['Electoral_List_Color'] == 'red') {
      return Colors.red.shade400;
    }
    else if(ElectoralList[index]['Electoral_List_Color'] == 'blue'){
      return Colors.blue.shade400;
    }
    else if(ElectoralList[index]['Electoral_List_Color'] == 'Grey'){
      return Colors.grey.shade400;
    }
    return Colors.brown.shade400;
  }

}