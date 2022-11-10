
abstract class AllCountriesState{
  AllCountriesState();
}
class AllCountriesInitial extends AllCountriesState{
   AllCountriesInitial();
}
class AllCountriesLoading extends AllCountriesState{
  AllCountriesLoading();
}
class AllCountriesLoaded extends AllCountriesState{
  AllCountriesLoaded();
}
class AllCountriesError extends AllCountriesState{
  final String error;
  AllCountriesError(this.error);
}
// class AllCountriesNotifier extends StateNotifier<AllCountriesState>{
//   final Ref ref;
//
//
// }