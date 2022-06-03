/// Status : "Success"
/// data : [{"Electoral_List_ID":"6","Electoral_List_Name":"List1","Electoral_List_Color":"red","Electoral_District_ID":"10","Total_Voices":"45440","Perc_Second_Ataba":"3.41430","Winner":"1","Nb_Of_Won_Seats":"4.00000","Perc_First_Ataba":"3.41430","Electoral_List_Color_Code":"#D53412","ADDED_DATE":"2022-01-25 12:42:24.850","ADDED_BY":"27114"},{"Electoral_List_ID":"7","Electoral_List_Name":"List2","Electoral_List_Color":"blue","Electoral_District_ID":"10","Total_Voices":"39638","Perc_Second_Ataba":"2.97835","Winner":"1","Nb_Of_Won_Seats":"3.00000","Perc_First_Ataba":"2.97835","Electoral_List_Color_Code":"#127BD5","ADDED_DATE":"2022-01-25 12:42:56.210","ADDED_BY":"27114"},{"Electoral_List_ID":"8","Electoral_List_Name":"List3","Electoral_List_Color":"Grey","Electoral_District_ID":"10","Total_Voices":"43920","Perc_Second_Ataba":"3.30009","Winner":"1","Nb_Of_Won_Seats":"4.00000","Perc_First_Ataba":"3.30009","Electoral_List_Color_Code":"#B2B4B6","ADDED_DATE":"2022-01-25 12:43:29.343","ADDED_BY":"27114"},{"Electoral_List_ID":"9","Electoral_List_Name":"List4","Electoral_List_Color":"Brown","Electoral_District_ID":"10","Total_Voices":"0","Perc_Second_Ataba":".00000","Winner":"0","Nb_Of_Won_Seats":".00000","Perc_First_Ataba":".00000","Electoral_List_Color_Code":"#581845","ADDED_DATE":"2022-01-25 12:44:17.173","ADDED_BY":"27114"}]

class ElectoralModel {
  ElectoralModel({
      String? status, 
      List<ElectoralData>? data,}){
    _status = status;
    _data = data;
}

  ElectoralModel.fromJson(dynamic json) {
    _status = json['Status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(ElectoralData.fromJson(v));
      });
    }
  }
  String? _status;
  List<ElectoralData>? _data;
ElectoralModel copyWith({  String? status,
  List<ElectoralData>? data,
}) => ElectoralModel(  status: status ?? _status,
  data: data ?? _data,
);
  String? get status => _status;
  List<ElectoralData>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Status'] = _status;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// Electoral_List_ID : "6"
/// Electoral_List_Name : "List1"
/// Electoral_List_Color : "red"
/// Electoral_District_ID : "10"
/// Total_Voices : "45440"
/// Perc_Second_Ataba : "3.41430"
/// Winner : "1"
/// Nb_Of_Won_Seats : "4.00000"
/// Perc_First_Ataba : "3.41430"
/// Electoral_List_Color_Code : "#D53412"
/// ADDED_DATE : "2022-01-25 12:42:24.850"
/// ADDED_BY : "27114"

class ElectoralData {
  Data({
      String? electoralListID, 
      String? electoralListName, 
      String? electoralListColor, 
      String? electoralDistrictID, 
      String? totalVoices, 
      String? percSecondAtaba, 
      String? winner, 
      String? nbOfWonSeats, 
      String? percFirstAtaba, 
      String? electoralListColorCode, 
      String? addeddate, 
      String? addedby,}){
    _electoralListID = electoralListID;
    _electoralListName = electoralListName;
    _electoralListColor = electoralListColor;
    _electoralDistrictID = electoralDistrictID;
    _totalVoices = totalVoices;
    _percSecondAtaba = percSecondAtaba;
    _winner = winner;
    _nbOfWonSeats = nbOfWonSeats;
    _percFirstAtaba = percFirstAtaba;
    _electoralListColorCode = electoralListColorCode;
    _addeddate = addeddate;
    _addedby = addedby;
}

  ElectoralData.fromJson(dynamic json) {
    _electoralListID = json['Electoral_List_ID'];
    _electoralListName = json['Electoral_List_Name'];
    _electoralListColor = json['Electoral_List_Color'];
    _electoralDistrictID = json['Electoral_District_ID'];
    _totalVoices = json['Total_Voices'];
    _percSecondAtaba = json['Perc_Second_Ataba'];
    _winner = json['Winner'];
    _nbOfWonSeats = json['Nb_Of_Won_Seats'];
    _percFirstAtaba = json['Perc_First_Ataba'];
    _electoralListColorCode = json['Electoral_List_Color_Code'];
    _addeddate = json['ADDED_DATE'];
    _addedby = json['ADDED_BY'];
  }
  String? _electoralListID;
  String? _electoralListName;
  String? _electoralListColor;
  String? _electoralDistrictID;
  String? _totalVoices;
  String? _percSecondAtaba;
  String? _winner;
  String? _nbOfWonSeats;
  String? _percFirstAtaba;
  String? _electoralListColorCode;
  String? _addeddate;
  String? _addedby;


  ElectoralData copyWith({  String? electoralListID,
  String? electoralListName,
  String? electoralListColor,
  String? electoralDistrictID,
  String? totalVoices,
  String? percSecondAtaba,
  String? winner,
  String? nbOfWonSeats,
  String? percFirstAtaba,
  String? electoralListColorCode,
  String? addeddate,
  String? addedby,
}) => Data(  electoralListID: electoralListID ?? _electoralListID,
  electoralListName: electoralListName ?? _electoralListName,
  electoralListColor: electoralListColor ?? _electoralListColor,
  electoralDistrictID: electoralDistrictID ?? _electoralDistrictID,
  totalVoices: totalVoices ?? _totalVoices,
  percSecondAtaba: percSecondAtaba ?? _percSecondAtaba,
  winner: winner ?? _winner,
  nbOfWonSeats: nbOfWonSeats ?? _nbOfWonSeats,
  percFirstAtaba: percFirstAtaba ?? _percFirstAtaba,
  electoralListColorCode: electoralListColorCode ?? _electoralListColorCode,
  addeddate: addeddate ?? _addeddate,
  addedby: addedby ?? _addedby,
);
  String? get electoralListID => _electoralListID;
  String? get electoralListName => _electoralListName;
  String? get electoralListColor => _electoralListColor;
  String? get electoralDistrictID => _electoralDistrictID;
  String? get totalVoices => _totalVoices;
  String? get percSecondAtaba => _percSecondAtaba;
  String? get winner => _winner;
  String? get nbOfWonSeats => _nbOfWonSeats;
  String? get percFirstAtaba => _percFirstAtaba;
  String? get electoralListColorCode => _electoralListColorCode;
  String? get addeddate => _addeddate;
  String? get addedby => _addedby;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Electoral_List_ID'] = _electoralListID;
    map['Electoral_List_Name'] = _electoralListName;
    map['Electoral_List_Color'] = _electoralListColor;
    map['Electoral_District_ID'] = _electoralDistrictID;
    map['Total_Voices'] = _totalVoices;
    map['Perc_Second_Ataba'] = _percSecondAtaba;
    map['Winner'] = _winner;
    map['Nb_Of_Won_Seats'] = _nbOfWonSeats;
    map['Perc_First_Ataba'] = _percFirstAtaba;
    map['Electoral_List_Color_Code'] = _electoralListColorCode;
    map['ADDED_DATE'] = _addeddate;
    map['ADDED_BY'] = _addedby;
    return map;
  }

}