import 'package:country_app/presentation/helper/constants/text.dart';
import 'package:flutter/material.dart';

class AppHeaderTwo extends StatelessWidget {
  const AppHeaderTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildLangContainer(),
        const Spacer(),
        buildFilterContainer()
      ],

    );
  }
  Widget buildLangContainer(){
    return Container(
      padding: const EdgeInsets.all(10),
      height: 50,
      width: 90,
      decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 2,
            color: Colors.grey


          )
        ],
        border: Border.all(
          color: const Color(0XFFA9B8D4),
          style: BorderStyle.solid,
          width: 0.5,
        )
      ),
      child: Row(
        children: [
          const Icon(Icons.web),
          AppText(text: 'EN'),
        ],

      ),

    );

  }
  Widget buildFilterContainer(){
    return Container(
      padding: const EdgeInsets.all(10),
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          color: const Color(0xFFFCFCFD),

          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 2,
                color: Colors.grey


            )
          ],
          border: Border.all(
            color: const Color(0XFFA9B8D4),
            style: BorderStyle.solid,
            width: 0.5,
          )
      ),
      child: Row(
        children: [
          const Icon(Icons.filter_alt_outlined),
          AppText(text: 'Filter'),
        ],

      ),

    );

  }

}


