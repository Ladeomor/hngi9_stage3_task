import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:country_app/data/models/country_model.dart';
import 'package:country_app/data/constants/api.dart';

class CountryApi{

  Future<Country> getAllCountries() async{
    Logger logger = Logger();
    const url = allCountriesEndpoint;

    var dio = Dio();
    try{
      final response = await dio.get(url);

      final countryModel = Country.fromJson(response.data);
      return countryModel;
    }catch(error){
      logger.wtf(error);
      rethrow;
    }
  }

}