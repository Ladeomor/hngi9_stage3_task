

import 'package:country_app/data/models/countries_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';



class SearchListController extends ChangeNotifier{
  final List<Countries> _countries = [];


  SearchListController([List<Countries>? state]) : super();

  List<Countries> get countries => _countries;



  List<Countries> getBySearch(String query){
    final RegExp regex = RegExp(query, caseSensitive: false);
  List<Countries> countrySearchResult = _countries.where((element) => element.name!.official!.contains(regex)).toList();
  notifyListeners();
  return countrySearchResult;
  }
}
final searchControllerProvider = ChangeNotifierProvider<SearchListController>(
      (ref) => SearchListController(),
);
