import 'package:country_app/data/models/countries_model.dart';
import 'package:country_app/logic/view_model_provider.dart';
import 'package:country_app/presentation/helper/carousel.dart';
import 'package:country_app/presentation/helper/navigation.dart';
import 'package:country_app/presentation/widgets/country_details.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CountryDetailsScreen extends StatefulHookConsumerWidget {
  final String imageOne;
  final String imageTwo;
  final String populationValue;
  final String regionValue;
  final String capitalValue;
  final String mottoValue;
  final String fourthDet;
  final String fifthDet;
  final String sixthDet;
  final String seventhDet;
  final String eightDet;
  final String code;
  final String ethnicGroup;
  final String lat;
  final String long;




  const CountryDetailsScreen(  {Key? key,
    required this.imageOne,
    required this.imageTwo,
    required this.populationValue,
    required this.regionValue,
    required this.capitalValue,
    required this.mottoValue,
    required this.fourthDet,
    required this.fifthDet,
    required this.sixthDet,
    required this.seventhDet,
    required this.eightDet,
    required this.code,
    required this.ethnicGroup,
    required this.lat,
    required this.long



  }) : super(key: key);

  @override
  ConsumerState<CountryDetailsScreen> createState() => _CountryDetailsScreenState();
}

class _CountryDetailsScreenState extends ConsumerState<CountryDetailsScreen> {
  @override

  Widget build(BuildContext context) {
    final countriesViewModel = ref.watch(allCountriesNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            navigatePop(context);
          },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )
        ),
      ),
        body:SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CarouselSlide(images: [
                widget.imageOne,
                widget.imageTwo
              ], ),
              const SizedBox(height: 10,),

                      CountryDetails(leadingText: 'Population:', trailingText: widget.populationValue),
                      const SizedBox(height: 5,),

                      CountryDetails(leadingText: 'Region:', trailingText: widget.regionValue),
                      const SizedBox(height: 5,),

                      CountryDetails(leadingText: 'Capital:', trailingText: widget.capitalValue),
                      const SizedBox(height: 5,),
                      CountryDetails(leadingText: 'Area:', trailingText: widget.mottoValue),
                      const SizedBox(height: 20,),

                      CountryDetails(leadingText: 'Language:', trailingText: widget.fourthDet),
                      const SizedBox(height: 5,),

                      CountryDetails(leadingText: 'Start of the Week:', trailingText: widget.fifthDet),
                      const SizedBox(height: 5,),
                      CountryDetails(leadingText: 'Independent:', trailingText: widget.sixthDet),
                      const SizedBox(height: 5,),

                      CountryDetails(leadingText: 'Timezone:', trailingText: widget.seventhDet),
                      const SizedBox(height: 5,),

                      CountryDetails(leadingText: 'Driving Side:', trailingText: widget.eightDet),
                      const SizedBox(height: 20,),
                      CountryDetails(leadingText: 'Dialing code:', trailingText: widget.code),
                      const SizedBox(height: 5,),
                      CountryDetails(leadingText: 'Ethnic Group:', trailingText:widget.ethnicGroup ),
                      const SizedBox(height: 5,),
                      CountryDetails(leadingText: 'Latitude:', trailingText: widget.lat),
                      const SizedBox(height: 5,),
                      CountryDetails(leadingText: 'Longitude:', trailingText: widget.long),


                    ]

          ),
              ),

      ),
            
     

    


    );
}
}