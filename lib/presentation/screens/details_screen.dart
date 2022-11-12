import 'package:country_app/logic/view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CountryDetailsScreen extends StatefulHookConsumerWidget {
  const CountryDetailsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<CountryDetailsScreen> createState() => _CountryDetailsScreenState();
}

class _CountryDetailsScreenState extends ConsumerState<CountryDetailsScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [

            ],
          ),
        ));
  }
}
