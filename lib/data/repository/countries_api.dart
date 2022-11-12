import 'dart:convert';

import 'package:country_app/data/country_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:country_app/data/models/countries_model.dart';
import 'package:country_app/data/constants/countries_api.dart';
import 'package:http/http.dart';

class CountryApi{
  List<Countries> allCountries = [];

  Future<List<Countries>>getAllCountries() async{

    const url = allCountriesEndpoint;
    Response response = await get(Uri.parse(url));
    if(response.statusCode == 200){
      var result = jsonDecode(response.body) as List;
      print(result);
      for(var element in result){
        allCountries.add(Countries.fromJson(element));
      }
      return allCountries;
    }else{
      throw Exception(response.reasonPhrase);
    }

  }



}
final countryApiProvider = Provider<CountryApi>((ref) => CountryApi());
