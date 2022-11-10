import 'package:country_app/data/models/countries_model.dart';
import 'package:country_app/data/repository/countries_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class CountriesState{
  CountriesState();
}
class CountriesInitial extends CountriesState{
   CountriesInitial();
}
class CountriesLoading extends CountriesState{
  CountriesLoading();
}
class CountriesLoaded extends CountriesState{
 final Countries countries;
 CountriesLoaded(this.countries);
}
class CountriesError extends CountriesState{
  final String error;
  CountriesError(this.error);
}
class CountriesNotifier extends StateNotifier<CountriesState>{
  final Ref ref;
  CountriesNotifier(this.ref) : super(CountriesInitial());
  Future<void> getCountry() async{
    state = CountriesLoading();
    try{
      final result = await ref.read(countryApiProvider).getAllCountries();
      state = CountriesLoaded(result);

    }catch(error){
      print(error);
      state = CountriesError(error.toString());
    }
  }


}