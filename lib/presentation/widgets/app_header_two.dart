import 'package:country_app/data/constants/text.dart';
import 'package:flutter/material.dart';

class AppHeaderTwo extends StatelessWidget {
  const AppHeaderTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildLangContainer(),
        Spacer(),
        buildLangContainer()
      ],

    );
  }
  Widget buildLangContainer(){
    return Container(
      padding: EdgeInsets.all(10),
      height: 50,
      width: 150,
      color: Colors.white,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 2,
            color: Color(0xFF101828)


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
          Icon(Icons.web),
          AppText(text: 'EN'),
        ],

      ),

    );

  }
  Widget buildFilterContainer(){
    return Container(
      padding: EdgeInsets.all(10),
      height: 50,
      width: 180,
      color: const Color(0xFFFCFCFD),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 2,
                color: Color(0xFF101828)


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


