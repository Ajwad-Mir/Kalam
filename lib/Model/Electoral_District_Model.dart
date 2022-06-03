/// Status : "Success"
/// data : [{"Electoral_District_ID":"1","Electoral_District_Name":"بيروت الأولى\r\n","Nb_Of_Seats":"8","First_Ataba":"5458.25000","Second_Ataba":"5287.50000","NakhibounNb":"137733","VotersNb":"43666"},{"Electoral_District_ID":"2","Electoral_District_Name":"بيروت الثانية\r\n","Nb_Of_Seats":"11","First_Ataba":"13075.36400","Second_Ataba":"11537.00000","NakhibounNb":"365147","VotersNb":"143829"},{"Electoral_District_ID":"3","Electoral_District_Name":"الجنوب الأولى\r\n","Nb_Of_Seats":"5","First_Ataba":"13147.60000","Second_Ataba":"11900.00000","NakhibounNb":"124671","VotersNb":"65738"},{"Electoral_District_ID":"4","Electoral_District_Name":"الجنوب الثانية\r\n","Nb_Of_Seats":"7","First_Ataba":"21043.14300","Second_Ataba":"19403.00000","NakhibounNb":"311953","VotersNb":"147302"},{"Electoral_District_ID":"5","Electoral_District_Name":"الجنوب الثالثة\r\n","Nb_Of_Seats":"11","First_Ataba":"20526.18200","Second_Ataba":"17745.81800","NakhibounNb":"490362","VotersNb":"225788"},{"Electoral_District_ID":"6","Electoral_District_Name":"البقاع الأولى\r\n","Nb_Of_Seats":"7","First_Ataba":"13095.42900","Second_Ataba":"11312.00000","NakhibounNb":"178411","VotersNb":"91668"},{"Electoral_District_ID":"7","Electoral_District_Name":"البقاع الثانية\r\n","Nb_Of_Seats":"6","First_Ataba":"11080.33300","Second_Ataba":"10822.66700","NakhibounNb":"147508","VotersNb":"66482"},{"Electoral_District_ID":"8","Electoral_District_Name":"البقاع الثالثة\r\n","Nb_Of_Seats":"10","First_Ataba":"18706.90000","Second_Ataba":"17705.50000","NakhibounNb":"323897","VotersNb":"187069"},{"Electoral_District_ID":"9","Electoral_District_Name":"الشمال الأولى\r\n","Nb_Of_Seats":"7","First_Ataba":"19058.85700","Second_Ataba":"15960.00000","NakhibounNb":"293071","VotersNb":"133412"},{"Electoral_District_ID":"10","Electoral_District_Name":"الشمال الثانية\r\n","Nb_Of_Seats":"11","First_Ataba":"13310.81800","Second_Ataba":"11393.54500","NakhibounNb":"416078","VotersNb":"146419"},{"Electoral_District_ID":"11","Electoral_District_Name":"الشمال الثالثة\r\n","Nb_Of_Seats":"10","First_Ataba":"11579.60000","Second_Ataba":"11263.60000","NakhibounNb":"272397","VotersNb":"115796"},{"Electoral_District_ID":"12","Electoral_District_Name":"جبل لبنان الأولى\r\n","Nb_Of_Seats":"8","First_Ataba":"14452.37500","Second_Ataba":"12567.75000","NakhibounNb":"180203","VotersNb":"115619"},{"Electoral_District_ID":"13","Electoral_District_Name":"جبل لبنان الثانية\r\n","Nb_Of_Seats":"8","First_Ataba":"11300.25000","Second_Ataba":"10671.87500","NakhibounNb":"183740","VotersNb":"90402"},{"Electoral_District_ID":"14","Electoral_District_Name":"جبل لبنان الثالثة\r\n","Nb_Of_Seats":"6","First_Ataba":"13077.83300","Second_Ataba":"11284.50000","NakhibounNb":"168922","VotersNb":"78467"},{"Electoral_District_ID":"15","Electoral_District_Name":"جبل لبنان الرابعة\r\n","Nb_Of_Seats":"13","First_Ataba":"13125.92300","Second_Ataba":"10730.15400","NakhibounNb":"343844","VotersNb":"170637"}]

class ElectoralDistrictModel {
  ElectoralDistrictModel({
      String? status, 
      List<ElectoralDistrictData>? data,}){
    _status = status;
    _data = data;
}

  ElectoralDistrictModel.fromJson(dynamic json) {
    _status = json['Status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(ElectoralDistrictData.fromJson(v));
      });
    }
  }
  String? _status;
  List<ElectoralDistrictData>? _data;
ElectoralDistrictModel copyWith({  String? status,
  List<ElectoralDistrictData>? data,
}) => ElectoralDistrictModel(  status: status ?? _status,
  data: data ?? _data,
);
  String? get status => _status;
  List<ElectoralDistrictData>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Status'] = _status;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// Electoral_District_ID : "1"
/// Electoral_District_Name : "بيروت الأولى\r\n"
/// Nb_Of_Seats : "8"
/// First_Ataba : "5458.25000"
/// Second_Ataba : "5287.50000"
/// NakhibounNb : "137733"
/// VotersNb : "43666"

class ElectoralDistrictData {
  Data({
      String? electoralDistrictID, 
      String? electoralDistrictName, 
      String? nbOfSeats, 
      String? firstAtaba, 
      String? secondAtaba, 
      String? nakhibounNb, 
      String? votersNb,}){
    _electoralDistrictID = electoralDistrictID;
    _electoralDistrictName = electoralDistrictName;
    _nbOfSeats = nbOfSeats;
    _firstAtaba = firstAtaba;
    _secondAtaba = secondAtaba;
    _nakhibounNb = nakhibounNb;
    _votersNb = votersNb;
}

  ElectoralDistrictData.fromJson(dynamic json) {
    _electoralDistrictID = json['Electoral_District_ID'];
    _electoralDistrictName = json['Electoral_District_Name'];
    _nbOfSeats = json['Nb_Of_Seats'];
    _firstAtaba = json['First_Ataba'];
    _secondAtaba = json['Second_Ataba'];
    _nakhibounNb = json['NakhibounNb'];
    _votersNb = json['VotersNb'];
  }
  String? _electoralDistrictID;
  String? _electoralDistrictName;
  String? _nbOfSeats;
  String? _firstAtaba;
  String? _secondAtaba;
  String? _nakhibounNb;
  String? _votersNb;

  ElectoralDistrictData copyWith({  String? electoralDistrictID,
  String? electoralDistrictName,
  String? nbOfSeats,
  String? firstAtaba,
  String? secondAtaba,
  String? nakhibounNb,
  String? votersNb,
}) => Data(  electoralDistrictID: electoralDistrictID ?? _electoralDistrictID,
  electoralDistrictName: electoralDistrictName ?? _electoralDistrictName,
  nbOfSeats: nbOfSeats ?? _nbOfSeats,
  firstAtaba: firstAtaba ?? _firstAtaba,
  secondAtaba: secondAtaba ?? _secondAtaba,
  nakhibounNb: nakhibounNb ?? _nakhibounNb,
  votersNb: votersNb ?? _votersNb,
);
  String? get electoralDistrictID => _electoralDistrictID;
  String? get electoralDistrictName => _electoralDistrictName;
  String? get nbOfSeats => _nbOfSeats;
  String? get firstAtaba => _firstAtaba;
  String? get secondAtaba => _secondAtaba;
  String? get nakhibounNb => _nakhibounNb;
  String? get votersNb => _votersNb;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Electoral_District_ID'] = _electoralDistrictID;
    map['Electoral_District_Name'] = _electoralDistrictName;
    map['Nb_Of_Seats'] = _nbOfSeats;
    map['First_Ataba'] = _firstAtaba;
    map['Second_Ataba'] = _secondAtaba;
    map['NakhibounNb'] = _nakhibounNb;
    map['VotersNb'] = _votersNb;
    return map;
  }

}