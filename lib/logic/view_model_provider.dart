

import 'package:country_app/logic/view_model/countries_vm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allCountriesNotifierProvider = StateNotifierProvider.autoDispose<CountriesNotifier, CountriesState>(
    (ref) => CountriesNotifier(ref)
);