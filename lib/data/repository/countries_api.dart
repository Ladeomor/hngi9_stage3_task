import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:country_app/data/models/countries_model.dart';
import 'package:country_app/data/constants/api.dart';

class CountryApi{

  Future<Countries> getAllCountries() async{
    Logger logger = Logger();
    const url = allCountriesEndpoint;

    var dio = Dio();
    try{
      final response = await dio.get(url);

      final countryModel = Countries.fromJson(response.data);
      return countryModel;
    }catch(error){
      logger.wtf(error);
      throw error;
    }
  }



}
final countryApiProvider = Provider((ref) => CountryApi());
