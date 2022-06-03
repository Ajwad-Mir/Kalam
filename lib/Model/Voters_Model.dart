/// Status : "Success"
/// data : {"current_page":1,"data":[{"Our_Elector_NB":"256","FullName":"روستوم هاكوب قصارجيان","TAIFA_NAME":"ارمن ارثوذكس","MAZHAB_NAME":"ارمن ارثوذكس","BIRTHDATE":"10/9/1950","SIGIL_NB":"4489","MOTHER_NAME":"وارطوهي سمرجيان","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"ذكور","CORRECTED_SIJEL":"4489"},{"Our_Elector_NB":"513","FullName":"ريتا حنا وهبه","TAIFA_NAME":"روم كاثوليك","MAZHAB_NAME":"ماروني","BIRTHDATE":"10/7/1974","SIGIL_NB":"296","MOTHER_NAME":"جليله ابي نخول","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"إناث","CORRECTED_SIJEL":"296"},{"Our_Elector_NB":"538","FullName":"نشتيه واتشه يعقوبيان","TAIFA_NAME":"روم كاثوليك","MAZHAB_NAME":"ارمن ارثوذكس","BIRTHDATE":"22/7/1996","SIGIL_NB":"164","MOTHER_NAME":"سيلفا انكليزيان","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"ذكور","CORRECTED_SIJEL":"164"},{"Our_Elector_NB":"242","FullName":"كميل فارس نوفو","TAIFA_NAME":"اشوري ارثوذكس","MAZHAB_NAME":"اشوري","BIRTHDATE":"26/2/1966","SIGIL_NB":"42","MOTHER_NAME":"وركاباروتا نوفو","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"ذكور","CORRECTED_SIJEL":"42"},{"Our_Elector_NB":"216","FullName":"رالف جان هلال","TAIFA_NAME":"روم ارثوذكس","MAZHAB_NAME":"روم ارثوذكس","BIRTHDATE":"16/5/1988","SIGIL_NB":"628","MOTHER_NAME":"كلار جريج","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"ذكور","CORRECTED_SIJEL":"628"},{"Our_Elector_NB":"217","FullName":"الياس عبد الكريم درغجي","TAIFA_NAME":"سريان كاثوليك","MAZHAB_NAME":"سريان ارثوذكس","BIRTHDATE":"14/12/1968","SIGIL_NB":"21","MOTHER_NAME":"جميله مقدسي انطوان","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"ذكور","CORRECTED_SIJEL":"21"},{"Our_Elector_NB":"266","FullName":"نبيه توفيق زيني","TAIFA_NAME":"علوي","MAZHAB_NAME":"شيعي","BIRTHDATE":"15/5/1961","SIGIL_NB":"17","MOTHER_NAME":"سعاد","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"ذكور","CORRECTED_SIJEL":"17"},{"Our_Elector_NB":"222","FullName":"ماري نورايد قره دانايان","TAIFA_NAME":"ارمن ارثوذكس","MAZHAB_NAME":"ارمن ارثوذكس","BIRTHDATE":"13/3/1972","SIGIL_NB":"912","MOTHER_NAME":"شاكه عربيه جيان","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"إناث","CORRECTED_SIJEL":"912"},{"Our_Elector_NB":"218","FullName":"عدل لويس شاهين","TAIFA_NAME":"روم كاثوليك","MAZHAB_NAME":"روم ارثوذكس","BIRTHDATE":"13/3/1961","SIGIL_NB":"481","MOTHER_NAME":"نوال حداد","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"إناث","CORRECTED_SIJEL":"481"},{"Our_Elector_NB":"207","FullName":"نعمات بهيج صليبي","TAIFA_NAME":"روم ارثوذكس","MAZHAB_NAME":"روم ارثوذكس","BIRTHDATE":"17/5/1957","SIGIL_NB":"667","MOTHER_NAME":"سعاد الغلام","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"إناث","CORRECTED_SIJEL":"667"}],"first_page_url":"http://192.168.5.13:9000/api/all-voter?page=1","from":1,"last_page":65,"last_page_url":"http://192.168.5.13:9000/api/all-voter?page=65","links":[{"url":null,"label":"&laquo; Previous","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=1","label":"1","active":true},{"url":"http://192.168.5.13:9000/api/all-voter?page=2","label":"2","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=3","label":"3","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=4","label":"4","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=5","label":"5","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=6","label":"6","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=7","label":"7","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=8","label":"8","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=9","label":"9","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=10","label":"10","active":false},{"url":null,"label":"...","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=64","label":"64","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=65","label":"65","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=2","label":"Next &raquo;","active":false}],"next_page_url":"http://192.168.5.13:9000/api/all-voter?page=2","path":"http://192.168.5.13:9000/api/all-voter","per_page":10,"prev_page_url":null,"to":10,"total":650}

class VotersModel {
  VotersModel({
      String? status, 
      VotersPage? data,}){
    _status = status;
    _data = data;
}

  VotersModel.fromJson(dynamic json) {
    _status = json['Status'];
    _data = json['data'] != null ? VotersPage.fromJson(json['data']) : null;
  }
  String? _status;
  VotersPage? _data;
VotersModel copyWith({  String? status,
  VotersPage? data,
}) => VotersModel(  status: status ?? _status,
  data: data ?? _data,
);
  String? get status => _status;
  VotersPage? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// current_page : 1
/// data : [{"Our_Elector_NB":"256","FullName":"روستوم هاكوب قصارجيان","TAIFA_NAME":"ارمن ارثوذكس","MAZHAB_NAME":"ارمن ارثوذكس","BIRTHDATE":"10/9/1950","SIGIL_NB":"4489","MOTHER_NAME":"وارطوهي سمرجيان","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"ذكور","CORRECTED_SIJEL":"4489"},{"Our_Elector_NB":"513","FullName":"ريتا حنا وهبه","TAIFA_NAME":"روم كاثوليك","MAZHAB_NAME":"ماروني","BIRTHDATE":"10/7/1974","SIGIL_NB":"296","MOTHER_NAME":"جليله ابي نخول","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"إناث","CORRECTED_SIJEL":"296"},{"Our_Elector_NB":"538","FullName":"نشتيه واتشه يعقوبيان","TAIFA_NAME":"روم كاثوليك","MAZHAB_NAME":"ارمن ارثوذكس","BIRTHDATE":"22/7/1996","SIGIL_NB":"164","MOTHER_NAME":"سيلفا انكليزيان","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"ذكور","CORRECTED_SIJEL":"164"},{"Our_Elector_NB":"242","FullName":"كميل فارس نوفو","TAIFA_NAME":"اشوري ارثوذكس","MAZHAB_NAME":"اشوري","BIRTHDATE":"26/2/1966","SIGIL_NB":"42","MOTHER_NAME":"وركاباروتا نوفو","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"ذكور","CORRECTED_SIJEL":"42"},{"Our_Elector_NB":"216","FullName":"رالف جان هلال","TAIFA_NAME":"روم ارثوذكس","MAZHAB_NAME":"روم ارثوذكس","BIRTHDATE":"16/5/1988","SIGIL_NB":"628","MOTHER_NAME":"كلار جريج","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"ذكور","CORRECTED_SIJEL":"628"},{"Our_Elector_NB":"217","FullName":"الياس عبد الكريم درغجي","TAIFA_NAME":"سريان كاثوليك","MAZHAB_NAME":"سريان ارثوذكس","BIRTHDATE":"14/12/1968","SIGIL_NB":"21","MOTHER_NAME":"جميله مقدسي انطوان","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"ذكور","CORRECTED_SIJEL":"21"},{"Our_Elector_NB":"266","FullName":"نبيه توفيق زيني","TAIFA_NAME":"علوي","MAZHAB_NAME":"شيعي","BIRTHDATE":"15/5/1961","SIGIL_NB":"17","MOTHER_NAME":"سعاد","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"ذكور","CORRECTED_SIJEL":"17"},{"Our_Elector_NB":"222","FullName":"ماري نورايد قره دانايان","TAIFA_NAME":"ارمن ارثوذكس","MAZHAB_NAME":"ارمن ارثوذكس","BIRTHDATE":"13/3/1972","SIGIL_NB":"912","MOTHER_NAME":"شاكه عربيه جيان","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"إناث","CORRECTED_SIJEL":"912"},{"Our_Elector_NB":"218","FullName":"عدل لويس شاهين","TAIFA_NAME":"روم كاثوليك","MAZHAB_NAME":"روم ارثوذكس","BIRTHDATE":"13/3/1961","SIGIL_NB":"481","MOTHER_NAME":"نوال حداد","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"إناث","CORRECTED_SIJEL":"481"},{"Our_Elector_NB":"207","FullName":"نعمات بهيج صليبي","TAIFA_NAME":"روم ارثوذكس","MAZHAB_NAME":"روم ارثوذكس","BIRTHDATE":"17/5/1957","SIGIL_NB":"667","MOTHER_NAME":"سعاد الغلام","KALAM_ID":"1719","WITH_US":"0","GENDER_NAME":"إناث","CORRECTED_SIJEL":"667"}]
/// first_page_url : "http://192.168.5.13:9000/api/all-voter?page=1"
/// from : 1
/// last_page : 65
/// last_page_url : "http://192.168.5.13:9000/api/all-voter?page=65"
/// links : [{"url":null,"label":"&laquo; Previous","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=1","label":"1","active":true},{"url":"http://192.168.5.13:9000/api/all-voter?page=2","label":"2","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=3","label":"3","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=4","label":"4","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=5","label":"5","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=6","label":"6","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=7","label":"7","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=8","label":"8","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=9","label":"9","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=10","label":"10","active":false},{"url":null,"label":"...","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=64","label":"64","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=65","label":"65","active":false},{"url":"http://192.168.5.13:9000/api/all-voter?page=2","label":"Next &raquo;","active":false}]
/// next_page_url : "http://192.168.5.13:9000/api/all-voter?page=2"
/// path : "http://192.168.5.13:9000/api/all-voter"
/// per_page : 10
/// prev_page_url : null
/// to : 10
/// total : 650

class VotersPage {
  Data({
      int? currentPage, 
      List<VotersData>? data,
      String? firstPageUrl, 
      int? from, 
      int? lastPage, 
      String? lastPageUrl, 
      List<Links>? links, 
      String? nextPageUrl, 
      String? path, 
      int? perPage, 
      dynamic prevPageUrl, 
      int? to, 
      int? total,}){
    _currentPage = currentPage;
    _data = data;
    _firstPageUrl = firstPageUrl;
    _from = from;
    _lastPage = lastPage;
    _lastPageUrl = lastPageUrl;
    _links = links;
    _nextPageUrl = nextPageUrl;
    _path = path;
    _perPage = perPage;
    _prevPageUrl = prevPageUrl;
    _to = to;
    _total = total;
}

  VotersPage.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(VotersData.fromJson(v));
      });
    }
    _firstPageUrl = json['first_page_url'];
    _from = json['from'];
    _lastPage = json['last_page'];
    _lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      _links = [];
      json['links'].forEach((v) {
        _links?.add(Links.fromJson(v));
      });
    }
    _nextPageUrl = json['next_page_url'];
    _path = json['path'];
    _perPage = json['per_page'];
    _prevPageUrl = json['prev_page_url'];
    _to = json['to'];
    _total = json['total'];
  }
  int? _currentPage;
  List<VotersData>? _data;
  String? _firstPageUrl;
  int? _from;
  int? _lastPage;
  String? _lastPageUrl;
  List<Links>? _links;
  String? _nextPageUrl;
  String? _path;
  int? _perPage;
  dynamic _prevPageUrl;
  int? _to;
  int? _total;
VotersPage copyWith({  int? currentPage,
  List<VotersData>? data,
  String? firstPageUrl,
  int? from,
  int? lastPage,
  String? lastPageUrl,
  List<Links>? links,
  String? nextPageUrl,
  String? path,
  int? perPage,
  dynamic prevPageUrl,
  int? to,
  int? total,
}) => Data(  currentPage: currentPage ?? _currentPage,
  data: data ?? _data,
  firstPageUrl: firstPageUrl ?? _firstPageUrl,
  from: from ?? _from,
  lastPage: lastPage ?? _lastPage,
  lastPageUrl: lastPageUrl ?? _lastPageUrl,
  links: links ?? _links,
  nextPageUrl: nextPageUrl ?? _nextPageUrl,
  path: path ?? _path,
  perPage: perPage ?? _perPage,
  prevPageUrl: prevPageUrl ?? _prevPageUrl,
  to: to ?? _to,
  total: total ?? _total,
);
  int? get currentPage => _currentPage;
  List<VotersData>? get data => _data;
  String? get firstPageUrl => _firstPageUrl;
  int? get from => _from;
  int? get lastPage => _lastPage;
  String? get lastPageUrl => _lastPageUrl;
  List<Links>? get links => _links;
  String? get nextPageUrl => _nextPageUrl;
  String? get path => _path;
  int? get perPage => _perPage;
  dynamic get prevPageUrl => _prevPageUrl;
  int? get to => _to;
  int? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['first_page_url'] = _firstPageUrl;
    map['from'] = _from;
    map['last_page'] = _lastPage;
    map['last_page_url'] = _lastPageUrl;
    if (_links != null) {
      map['links'] = _links?.map((v) => v.toJson()).toList();
    }
    map['next_page_url'] = _nextPageUrl;
    map['path'] = _path;
    map['per_page'] = _perPage;
    map['prev_page_url'] = _prevPageUrl;
    map['to'] = _to;
    map['total'] = _total;
    return map;
  }

}

/// url : null
/// label : "&laquo; Previous"
/// active : false

class Links {
  Links({
      dynamic url, 
      String? label, 
      bool? active,}){
    _url = url;
    _label = label;
    _active = active;
}

  Links.fromJson(dynamic json) {
    _url = json['url'];
    _label = json['label'];
    _active = json['active'];
  }
  dynamic _url;
  String? _label;
  bool? _active;
Links copyWith({  dynamic url,
  String? label,
  bool? active,
}) => Links(  url: url ?? _url,
  label: label ?? _label,
  active: active ?? _active,
);
  dynamic get url => _url;
  String? get label => _label;
  bool? get active => _active;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['label'] = _label;
    map['active'] = _active;
    return map;
  }

}

/// Our_Elector_NB : "256"
/// FullName : "روستوم هاكوب قصارجيان"
/// TAIFA_NAME : "ارمن ارثوذكس"
/// MAZHAB_NAME : "ارمن ارثوذكس"
/// BIRTHDATE : "10/9/1950"
/// SIGIL_NB : "4489"
/// MOTHER_NAME : "وارطوهي سمرجيان"
/// KALAM_ID : "1719"
/// WITH_US : "0"
/// GENDER_NAME : "ذكور"
/// CORRECTED_SIJEL : "4489"

class VotersData {
  Data({
      String? ourElectorNB, 
      String? fullName, 
      String? taifaname, 
      String? mazhabname, 
      String? birthdate, 
      String? sigilnb, 
      String? mothername, 
      String? kalamid, 
      String? withus, 
      String? gendername, 
      String? correctedsijel,}){
    _ourElectorNB = ourElectorNB;
    _fullName = fullName;
    _taifaname = taifaname;
    _mazhabname = mazhabname;
    _birthdate = birthdate;
    _sigilnb = sigilnb;
    _mothername = mothername;
    _kalamid = kalamid;
    _withus = withus;
    _gendername = gendername;
    _correctedsijel = correctedsijel;
}

  VotersData.fromJson(dynamic json) {
    _ourElectorNB = json['Our_Elector_NB'];
    _fullName = json['FullName'];
    _taifaname = json['TAIFA_NAME'];
    _mazhabname = json['MAZHAB_NAME'];
    _birthdate = json['BIRTHDATE'];
    _sigilnb = json['SIGIL_NB'];
    _mothername = json['MOTHER_NAME'];
    _kalamid = json['KALAM_ID'];
    _withus = json['WITH_US'];
    _gendername = json['GENDER_NAME'];
    _correctedsijel = json['CORRECTED_SIJEL'];
  }
  String? _ourElectorNB;
  String? _fullName;
  String? _taifaname;
  String? _mazhabname;
  String? _birthdate;
  String? _sigilnb;
  String? _mothername;
  String? _kalamid;
  String? _withus;
  String? _gendername;
  String? _correctedsijel;
  VotersData copyWith({  String? ourElectorNB,
  String? fullName,
  String? taifaname,
  String? mazhabname,
  String? birthdate,
  String? sigilnb,
  String? mothername,
  String? kalamid,
  String? withus,
  String? gendername,
  String? correctedsijel,
}) => Data(  ourElectorNB: ourElectorNB ?? _ourElectorNB,
  fullName: fullName ?? _fullName,
  taifaname: taifaname ?? _taifaname,
  mazhabname: mazhabname ?? _mazhabname,
  birthdate: birthdate ?? _birthdate,
  sigilnb: sigilnb ?? _sigilnb,
  mothername: mothername ?? _mothername,
  kalamid: kalamid ?? _kalamid,
  withus: withus ?? _withus,
  gendername: gendername ?? _gendername,
  correctedsijel: correctedsijel ?? _correctedsijel,
);
  String? get ourElectorNB => _ourElectorNB;
  String? get fullName => _fullName;
  String? get taifaname => _taifaname;
  String? get mazhabname => _mazhabname;
  String? get birthdate => _birthdate;
  String? get sigilnb => _sigilnb;
  String? get mothername => _mothername;
  String? get kalamid => _kalamid;
  String? get withus => _withus;
  String? get gendername => _gendername;
  String? get correctedsijel => _correctedsijel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Our_Elector_NB'] = _ourElectorNB;
    map['FullName'] = _fullName;
    map['TAIFA_NAME'] = _taifaname;
    map['MAZHAB_NAME'] = _mazhabname;
    map['BIRTHDATE'] = _birthdate;
    map['SIGIL_NB'] = _sigilnb;
    map['MOTHER_NAME'] = _mothername;
    map['KALAM_ID'] = _kalamid;
    map['WITH_US'] = _withus;
    map['GENDER_NAME'] = _gendername;
    map['CORRECTED_SIJEL'] = _correctedsijel;
    return map;
  }

}