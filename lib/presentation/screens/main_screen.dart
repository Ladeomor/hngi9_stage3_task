import 'package:country_app/data/models/countries_model.dart';
import 'package:country_app/logic/dark_mode_notifier.dart';
import 'package:country_app/logic/search_notifier.dart';
import 'package:country_app/logic/view_model/countries_vm.dart';
import 'package:country_app/logic/view_model_provider.dart';
import 'package:country_app/presentation/helper/app_header_two.dart';
import 'package:country_app/presentation/helper/app_textfield.dart';
import 'package:country_app/presentation/helper/constants/text.dart';
import 'package:country_app/presentation/helper/navigation.dart';
import 'package:country_app/presentation/helper/progress_bar.dart';
import 'package:country_app/presentation/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_transition/page_transition.dart';

class MainScreen extends HookConsumerWidget {
  const MainScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final countriesViewModel = ref.watch(allCountriesNotifierProvider);
    var darkMode = ref.watch(darkModeProvider);



    return Scaffold(
      backgroundColor: darkMode ? Color(0xFF000F24) : Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            LogoText(text: 'Explore'),
            buildCircle(),


          ],
        ),
        actions: [
              CircleAvatar(
                radius: 20,
                backgroundColor: darkMode?Color(0xFF98A2B3).withOpacity(0.2):Color(0xFFF2F4F7),
                child: IconButton(icon: darkMode?const Icon(Icons.wb_sunny, color: Colors.white,):Icon(Icons.wb_sunny_outlined, color: Colors.black), onPressed: (){
                  ref.read(darkModeProvider.notifier).toggle();
                },),
              )

        ],
        centerTitle: false,

      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
       SearchTextField(),

      SizedBox(height: 30,),

            AppHeaderTwo(),
            SizedBox(height: 10,),

              countriesViewModel.when(data: (countriesViewModel){
              List<Countries> countryList = countriesViewModel.map((e) => e).toList();

              return Expanded(child: ListView.builder(

                itemCount: countryList.length,
                  itemBuilder: (context, index){
                  final sortedCountryList = countryList..sort((item1, item2) => item1.name!.official.toString().compareTo(item2.name!.official.toString()));
                  var countryListt = sortedCountryList[index];

                return GestureDetector(
                  onTap: (){
                    navigateWithAnimation(context, PageTransitionType.leftToRight,
                        CountryDetailsScreen(
                          text: countryListt.name!.official.toString(),
                            imageOne: countryListt.flags!.png.toString(),
                            imageTwo: countryListt.coatOfArms!.png.toString().isEmpty ? countryListt.flags!.png.toString():countryListt.coatOfArms!.png.toString(),
                            populationValue: countryListt.population.toString(),
                            regionValue: countryListt.region.toString(),
                            capitalValue: countryListt.capital!.join(','),
                            mottoValue: countryListt.area.toString(),
                          fourthDet: countryListt.languages![countryListt.languages!.keys.toList().first]!,

                          fifthDet: countryListt.startOfWeek!.toString(),
                          sixthDet: countryListt.independent! ? 'Yes' : 'No',
                          seventhDet: countryListt.timezones!.first,
                          eightDet: countryListt.car!.side.toString(),
                          code: '${countryListt.idd!.root.toString()} ${countryListt.idd!.suffixes!.join(',').toString()}',
                          ethnicGroup: countryListt.subregion.toString(),
                          lat: countryListt.latlng!.first.toString(),
                          long: countryListt.latlng!.last.toString(),

                        ));
                  },

                  child: ListTile(
                    leading:  Container(
                                      height: 120,
                                      width: 50,
                                      margin: const EdgeInsets.fromLTRB(0, 8, 10, 17),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                          image: NetworkImage(countryListt.flags!.png.toString()), fit: BoxFit.cover
                                        )
                                      ),
                                    ),
                    title: AppLargeText(text: countryListt.name!.official.toString(),size: 15,),
                    subtitle: AppText(text: countryListt.region.toString()),
                  ),
                );
              }));
            }, error: (err, s) => AppText(text:err.toString()), loading:()=> Center(child: progressBar(),)),
          ],
        ),
      ),
    );
  }
  Widget buildCircle(){
    return Container(
      width: 10,
      height: 5,
      decoration: const BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.circle
      ),
    );
  }


}
