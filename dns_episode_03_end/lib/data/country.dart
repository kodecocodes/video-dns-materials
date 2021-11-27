class Country {
  late final String countryCode;
  late final String countryName;
  late final String currencyCode;
  late final String population;
  late final String capital;
  late final String continentName;

  Country(
      {required this.countryCode,
      required this.countryName,
      required this.currencyCode,
      required this.population,
      required this.capital,
      required this.continentName});

  Country.fromMap(Map<String, dynamic> map) {
    countryCode = map['countryCode'] as String;
    countryName = map['countryName'] as String;
    currencyCode = map['currencyCode'] as String;
    population = map['population'] as String;
    capital = map['capital'] as String;
    continentName = map['continentName'] as String;
  }
}
