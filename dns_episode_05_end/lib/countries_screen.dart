import 'package:intl/intl.dart';
import './data/countries_helper.dart';
import 'package:flutter/material.dart';
import 'data/country.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({Key? key}) : super(key: key);

  @override
  _CountriesScreenState createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  late CountriesHelper helper;

  @override
  void initState() {
    helper = CountriesHelper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
      ),
      body: FutureBuilder(
        future: helper.getCountries(),
        builder: (context, snapshot) {
          final countries = (snapshot.data == null)
              ? List<Country>.empty()
              : snapshot.data as List<Country>;
          return ListView.builder(
              itemCount: countries.length,
              itemBuilder: (context, index) {
                var population = countries[index].population;
                population = formatPopulation(population);
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(countries[index].countryCode),
                    backgroundColor: Colors.yellow,
                  ),
                  title: Text(countries[index].countryName),
                  subtitle: Text('Capital:  ${countries[index].capital} \n' +
                      'Continent: ${countries[index].continentName}\n' +
                      'Population: $population'),
                );
              });
        },
      ),
    );
  }

  String formatPopulation(String? population) {
    final format = NumberFormat.compact(locale: 'it-it');
    population ??= '0';
    final number = int.parse(population);
    return format.format(number);
  }
}
