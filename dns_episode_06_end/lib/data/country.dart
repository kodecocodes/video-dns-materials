import 'package:flutter/foundation.dart';

class Country {
  late String countryCode;
  late String countryName;
  String? currencyCode;
  String? population;
  String? capital;
  String? continentName;

  Country({
    required this.countryCode,
    required this.countryName,
    this.currencyCode,
    this.population,
    required this.capital,
    required this.continentName,
  });

  Country.fromMap(Map<String, dynamic> map) {
    countryCode = map['countryCode'] as String;
    countryName = map['countryName'] as String;
    currencyCode =
        (map['currencyCode'] == null) ? null : map['currencyCode'] as String?;
    population =
        (map['population'] == null) ? null : map['population'] as String?;
    capital = map['capital'] as String?;
    continentName = map['continentName'] as String?;
  }

  void sayHello(bool? isMorning) {
    //isMorning is nullable
    print(isMorning!); // <-- isMorning is treated as non-nullable
  }

  void ifNullOperator() {
    int? nullValue;
    int? notNullValue;

    notNullValue = 42;

    print(notNullValue ?? 1); // prints 42
    print(nullValue ?? 8); // prints 8
    print(null ?? null); // prints null
    print(nullValue ?? null ?? 8); // prints 8
  }
}
