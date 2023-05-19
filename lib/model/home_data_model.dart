class MetaInfoModel {
  final String fundHouse;
  final String schemeType;
  final String schemeCategory;
  final int schemeCode;
  final String schemeName;

  MetaInfoModel({
    required this.fundHouse,
    required this.schemeType,
    required this.schemeCategory,
    required this.schemeCode,
    required this.schemeName,
  });

  factory MetaInfoModel.fromJson(Map<String, dynamic> json) => MetaInfoModel(
        fundHouse: json['fund_house'],
        schemeType: json['scheme_type'],
        schemeCategory: json['scheme_category'],
        schemeCode: json['scheme_code'],
        schemeName: json['scheme_name'],
      );
}

class DataModel {
  final String date;
  final String nav;

  DataModel({
    required this.date,
    required this.nav,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        date: json['date'],
        nav: json['nav'],
      );
}
