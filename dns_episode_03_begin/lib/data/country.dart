class Country {
  final String countryCode;
  final String countryName;
  final String currencyCode;
  final String population;
  final String capital;
  final String continentName;

  Country(
    this.countryCode,
    this.countryName,
    this.currencyCode,
    this.population,
    this.capital,
    this.continentName,
  );

  // Country.fromMap(Map<String, dynamic> map) {
  //   countryCode = map['countryCode'] as String;
  //   countryName = map['countryName'] as String;
  //   currencyCode = map['currencyCode'] as String
  //   
  //   population = map['population'] as String;
  //   capital = map['capital'] as String;
  //   continentName = map['continentName'] as String;
  // }
}
