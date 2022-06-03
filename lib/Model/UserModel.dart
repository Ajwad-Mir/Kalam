/// Status : "Success"
/// data : [{"REPRESENTATIVE_ID":1,"KALAM_ID":"1719","REPRESENTATIVE_FIRST_NAME":"Marwan","REPRESENTATIVE_LAST_NAME":"hassan","REPRESENTATIVE_FATHER_NAME":"Hassan","REPRESENTATIVE_MOTHER_NAME":"Leila Abiad","REPRESENTATIVE_BIRTHYEAR":"1966","NATIONAL_REGISTER_ID":"3843771","REFERENCE_REMARK":null,"SIJEL":"150","SIJEL_TOWN_ID":"1472","MAZHAB_ID":"15","CONTACT_MOBILE":"70943134","CONTACT_ADDRESS":null,"REFERENCE_STATUS":"1","GENDER_ID":"1","REPRESENTATIVE_TYPE_ID":"2","MARKAZ_ID":"1070","AUTENTICATION_NBR":"153653","Electoral_List_ID":null,"HAS_PERMIT":"0","REPRESENTATIVE_BIRTHDATE":null,"ADDED_DATE":null,"ADDED_BY":null,"D_Soghra_ID":null,"otp":null,"loginotp":"9245"}]

class UserModel {
  UserModel({
      String? status, 
      List<UserData>? data,}){
    _status = status;
    _data = data;
}

  UserModel.fromJson(dynamic json) {
    _status = json['Status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(UserData.fromJson(v));
      });
    }
  }
  String? _status;
  List<UserData>? _data;
UserModel copyWith({  String? status,
  List<UserData>? data,
}) => UserModel(  status: status ?? _status,
  data: data ?? _data,
);
  String? get status => _status;
  List<UserData>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Status'] = _status;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// REPRESENTATIVE_ID : 1
/// KALAM_ID : "1719"
/// REPRESENTATIVE_FIRST_NAME : "Marwan"
/// REPRESENTATIVE_LAST_NAME : "hassan"
/// REPRESENTATIVE_FATHER_NAME : "Hassan"
/// REPRESENTATIVE_MOTHER_NAME : "Leila Abiad"
/// REPRESENTATIVE_BIRTHYEAR : "1966"
/// NATIONAL_REGISTER_ID : "3843771"
/// REFERENCE_REMARK : null
/// SIJEL : "150"
/// SIJEL_TOWN_ID : "1472"
/// MAZHAB_ID : "15"
/// CONTACT_MOBILE : "70943134"
/// CONTACT_ADDRESS : null
/// REFERENCE_STATUS : "1"
/// GENDER_ID : "1"
/// REPRESENTATIVE_TYPE_ID : "2"
/// MARKAZ_ID : "1070"
/// AUTENTICATION_NBR : "153653"
/// Electoral_List_ID : null
/// HAS_PERMIT : "0"
/// REPRESENTATIVE_BIRTHDATE : null
/// ADDED_DATE : null
/// ADDED_BY : null
/// D_Soghra_ID : null
/// otp : null
/// loginotp : "9245"

class UserData {
  Data({
      int? representativeid, 
      String? kalamid, 
      String? representativefirstname, 
      String? representativelastname, 
      String? representativefathername, 
      String? representativemothername, 
      String? representativebirthyear, 
      String? nationalregisterid, 
      dynamic referenceremark, 
      String? sijel, 
      String? sijeltownid, 
      String? mazhabid, 
      String? contactmobile, 
      dynamic contactaddress, 
      String? referencestatus, 
      String? genderid, 
      String? representativetypeid, 
      String? markazid, 
      String? autenticationnbr, 
      dynamic electoralListID, 
      String? haspermit, 
      dynamic representativebirthdate, 
      dynamic addeddate, 
      dynamic addedby, 
      dynamic dSoghraID, 
      dynamic otp, 
      String? loginotp,}){
    _representativeid = representativeid;
    _kalamid = kalamid;
    _representativefirstname = representativefirstname;
    _representativelastname = representativelastname;
    _representativefathername = representativefathername;
    _representativemothername = representativemothername;
    _representativebirthyear = representativebirthyear;
    _nationalregisterid = nationalregisterid;
    _referenceremark = referenceremark;
    _sijel = sijel;
    _sijeltownid = sijeltownid;
    _mazhabid = mazhabid;
    _contactmobile = contactmobile;
    _contactaddress = contactaddress;
    _referencestatus = referencestatus;
    _genderid = genderid;
    _representativetypeid = representativetypeid;
    _markazid = markazid;
    _autenticationnbr = autenticationnbr;
    _electoralListID = electoralListID;
    _haspermit = haspermit;
    _representativebirthdate = representativebirthdate;
    _addeddate = addeddate;
    _addedby = addedby;
    _dSoghraID = dSoghraID;
    _otp = otp;
    _loginotp = loginotp;
}

  UserData.fromJson(dynamic json) {
    _representativeid = json['REPRESENTATIVE_ID'];
    _kalamid = json['KALAM_ID'];
    _representativefirstname = json['REPRESENTATIVE_FIRST_NAME'];
    _representativelastname = json['REPRESENTATIVE_LAST_NAME'];
    _representativefathername = json['REPRESENTATIVE_FATHER_NAME'];
    _representativemothername = json['REPRESENTATIVE_MOTHER_NAME'];
    _representativebirthyear = json['REPRESENTATIVE_BIRTHYEAR'];
    _nationalregisterid = json['NATIONAL_REGISTER_ID'];
    _referenceremark = json['REFERENCE_REMARK'];
    _sijel = json['SIJEL'];
    _sijeltownid = json['SIJEL_TOWN_ID'];
    _mazhabid = json['MAZHAB_ID'];
    _contactmobile = json['CONTACT_MOBILE'];
    _contactaddress = json['CONTACT_ADDRESS'];
    _referencestatus = json['REFERENCE_STATUS'];
    _genderid = json['GENDER_ID'];
    _representativetypeid = json['REPRESENTATIVE_TYPE_ID'];
    _markazid = json['MARKAZ_ID'];
    _autenticationnbr = json['AUTENTICATION_NBR'];
    _electoralListID = json['Electoral_List_ID'];
    _haspermit = json['HAS_PERMIT'];
    _representativebirthdate = json['REPRESENTATIVE_BIRTHDATE'];
    _addeddate = json['ADDED_DATE'];
    _addedby = json['ADDED_BY'];
    _dSoghraID = json['D_Soghra_ID'];
    _otp = json['otp'];
    _loginotp = json['loginotp'];
  }
  int? _representativeid;
  String? _kalamid;
  String? _representativefirstname;
  String? _representativelastname;
  String? _representativefathername;
  String? _representativemothername;
  String? _representativebirthyear;
  String? _nationalregisterid;
  dynamic _referenceremark;
  String? _sijel;
  String? _sijeltownid;
  String? _mazhabid;
  String? _contactmobile;
  dynamic _contactaddress;
  String? _referencestatus;
  String? _genderid;
  String? _representativetypeid;
  String? _markazid;
  String? _autenticationnbr;
  dynamic _electoralListID;
  String? _haspermit;
  dynamic _representativebirthdate;
  dynamic _addeddate;
  dynamic _addedby;
  dynamic _dSoghraID;
  dynamic _otp;
  String? _loginotp;
  UserData copyWith({  int? representativeid,
  String? kalamid,
  String? representativefirstname,
  String? representativelastname,
  String? representativefathername,
  String? representativemothername,
  String? representativebirthyear,
  String? nationalregisterid,
  dynamic referenceremark,
  String? sijel,
  String? sijeltownid,
  String? mazhabid,
  String? contactmobile,
  dynamic contactaddress,
  String? referencestatus,
  String? genderid,
  String? representativetypeid,
  String? markazid,
  String? autenticationnbr,
  dynamic electoralListID,
  String? haspermit,
  dynamic representativebirthdate,
  dynamic addeddate,
  dynamic addedby,
  dynamic dSoghraID,
  dynamic otp,
  String? loginotp,
}) => Data(  representativeid: representativeid ?? _representativeid,
  kalamid: kalamid ?? _kalamid,
  representativefirstname: representativefirstname ?? _representativefirstname,
  representativelastname: representativelastname ?? _representativelastname,
  representativefathername: representativefathername ?? _representativefathername,
  representativemothername: representativemothername ?? _representativemothername,
  representativebirthyear: representativebirthyear ?? _representativebirthyear,
  nationalregisterid: nationalregisterid ?? _nationalregisterid,
  referenceremark: referenceremark ?? _referenceremark,
  sijel: sijel ?? _sijel,
  sijeltownid: sijeltownid ?? _sijeltownid,
  mazhabid: mazhabid ?? _mazhabid,
  contactmobile: contactmobile ?? _contactmobile,
  contactaddress: contactaddress ?? _contactaddress,
  referencestatus: referencestatus ?? _referencestatus,
  genderid: genderid ?? _genderid,
  representativetypeid: representativetypeid ?? _representativetypeid,
  markazid: markazid ?? _markazid,
  autenticationnbr: autenticationnbr ?? _autenticationnbr,
  electoralListID: electoralListID ?? _electoralListID,
  haspermit: haspermit ?? _haspermit,
  representativebirthdate: representativebirthdate ?? _representativebirthdate,
  addeddate: addeddate ?? _addeddate,
  addedby: addedby ?? _addedby,
  dSoghraID: dSoghraID ?? _dSoghraID,
  otp: otp ?? _otp,
  loginotp: loginotp ?? _loginotp,
);
  int? get representativeid => _representativeid;
  String? get kalamid => _kalamid;
  String? get representativefirstname => _representativefirstname;
  String? get representativelastname => _representativelastname;
  String? get representativefathername => _representativefathername;
  String? get representativemothername => _representativemothername;
  String? get representativebirthyear => _representativebirthyear;
  String? get nationalregisterid => _nationalregisterid;
  dynamic get referenceremark => _referenceremark;
  String? get sijel => _sijel;
  String? get sijeltownid => _sijeltownid;
  String? get mazhabid => _mazhabid;
  String? get contactmobile => _contactmobile;
  dynamic get contactaddress => _contactaddress;
  String? get referencestatus => _referencestatus;
  String? get genderid => _genderid;
  String? get representativetypeid => _representativetypeid;
  String? get markazid => _markazid;
  String? get autenticationnbr => _autenticationnbr;
  dynamic get electoralListID => _electoralListID;
  String? get haspermit => _haspermit;
  dynamic get representativebirthdate => _representativebirthdate;
  dynamic get addeddate => _addeddate;
  dynamic get addedby => _addedby;
  dynamic get dSoghraID => _dSoghraID;
  dynamic get otp => _otp;
  String? get loginotp => _loginotp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['REPRESENTATIVE_ID'] = _representativeid;
    map['KALAM_ID'] = _kalamid;
    map['REPRESENTATIVE_FIRST_NAME'] = _representativefirstname;
    map['REPRESENTATIVE_LAST_NAME'] = _representativelastname;
    map['REPRESENTATIVE_FATHER_NAME'] = _representativefathername;
    map['REPRESENTATIVE_MOTHER_NAME'] = _representativemothername;
    map['REPRESENTATIVE_BIRTHYEAR'] = _representativebirthyear;
    map['NATIONAL_REGISTER_ID'] = _nationalregisterid;
    map['REFERENCE_REMARK'] = _referenceremark;
    map['SIJEL'] = _sijel;
    map['SIJEL_TOWN_ID'] = _sijeltownid;
    map['MAZHAB_ID'] = _mazhabid;
    map['CONTACT_MOBILE'] = _contactmobile;
    map['CONTACT_ADDRESS'] = _contactaddress;
    map['REFERENCE_STATUS'] = _referencestatus;
    map['GENDER_ID'] = _genderid;
    map['REPRESENTATIVE_TYPE_ID'] = _representativetypeid;
    map['MARKAZ_ID'] = _markazid;
    map['AUTENTICATION_NBR'] = _autenticationnbr;
    map['Electoral_List_ID'] = _electoralListID;
    map['HAS_PERMIT'] = _haspermit;
    map['REPRESENTATIVE_BIRTHDATE'] = _representativebirthdate;
    map['ADDED_DATE'] = _addeddate;
    map['ADDED_BY'] = _addedby;
    map['D_Soghra_ID'] = _dSoghraID;
    map['otp'] = _otp;
    map['loginotp'] = _loginotp;
    return map;
  }

}