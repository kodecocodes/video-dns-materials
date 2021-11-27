import 'package:flutter/foundation.dart';

class Country {
  String countryCode;
  String countryName;
  String currencyCode;
  String population;
  String capital;
  String continentName;

  Country({
    @required this.countryCode,
    @required this.countryName,
    this.currencyCode,
    this.population,
    @required this.capital,
    @required this.continentName,
  });

  Country.fromMap(Map<String, dynamic> map) {
    countryCode = map['countryCode'] as String;
    countryName = map['countryName'] as String;
    currencyCode =
        (map['currencyCode'] == null) ? null : map['currencyCode'] as String;
    population =
        (map['population'] == null) ? null : map['population'] as String;
    capital = map['capital'] as String;
    continentName = map['continentName'] as String;
  }
}
