

import 'package:country_app/data/models/countries_model.dart';
import 'package:country_app/data/repository/countries_api.dart';
import 'package:country_app/logic/view_model/countries_vm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allCountriesNotifierProvider = FutureProvider<List<Countries>>((ref)async{
  return ref.watch(countryApiProvider).getAllCountries();
});

