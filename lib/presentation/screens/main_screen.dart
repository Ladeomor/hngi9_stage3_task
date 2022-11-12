import 'package:country_app/data/models/countries_model.dart';
import 'package:country_app/logic/view_model/countries_vm.dart';
import 'package:country_app/logic/view_model_provider.dart';
import 'package:country_app/presentation/helper/app_header_two.dart';
import 'package:country_app/presentation/helper/app_textfield.dart';
import 'package:country_app/presentation/helper/constants/text.dart';
import 'package:country_app/presentation/helper/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final countriesViewModel = ref.watch(allCountriesNotifierProvider);
    return Scaffold(
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
          buildCircleContainer(
              IconButton(icon: const Icon(Icons.wb_sunny_outlined, color: Colors.black), onPressed: (){

              },)
          ),
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
                  final countryListt = sortedCountryList[index];
                  print(countryList[index].name);
                return ListTile(
                  leading:  Container(
                                    height: 90,
                                    width: 50,
                                    margin: const EdgeInsets.fromLTRB(0, 8, 10, 17),
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: NetworkImage(countryListt.flags!.png.toString()), fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                  title: AppText(text: countryListt.name!.official.toString()),
                  subtitle: AppText(text: countryListt.region.toString()),
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

  Widget buildCircleContainer(Widget child){
    return Container(
      height: 30,
      width: 30,
      color: const Color(0xFFFCFCFD),
      child: child,
    );
  }
}
