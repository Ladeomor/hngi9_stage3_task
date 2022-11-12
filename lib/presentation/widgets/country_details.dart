
import 'package:country_app/presentation/helper/constants/text.dart';
import 'package:flutter/material.dart';
class CountryDetails extends StatelessWidget {
  final String leadingText;
  final String trailingText;
  const CountryDetails({Key? key, required this.leadingText, required this.trailingText }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppLargeText(text: leadingText, size:15),
        SizedBox(width: 5,),
        AppText(text: trailingText)
      ],
    );
  }
}
