import 'dart:convert';
import 'package:flutter/services.dart';
import 'country.dart';

class CountriesHelper {
  final List<Country> countries = [];
  
  Future<List<Country>> getCountries() async {
    final data = await rootBundle.loadString('assets/countries.json');
    final dynamic jsonData = jsonDecode(data);
    final countriesData = jsonData['countries'] as List;

    // ignore: avoid_annotating_with_dynamic
    countriesData.forEach((dynamic countryData) {
      final countryMap = countryData as Map<String, dynamic>;
      countries.add(Country.fromMap(countryMap));
    });
    return countries;
  }
}
