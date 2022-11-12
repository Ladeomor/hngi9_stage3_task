import 'package:country_app/logic/dark_mode_notifier.dart';
import 'package:country_app/presentation/helper/constants/text.dart';
import 'package:country_app/presentation/helper/navigation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppHeaderTwo extends StatefulHookConsumerWidget {
  const AppHeaderTwo({Key? key}) : super(key: key);

  @override
  ConsumerState<AppHeaderTwo> createState() => _AppHeaderTwoState();
}

class _AppHeaderTwoState extends ConsumerState<AppHeaderTwo> {
  int? _groupValue;

  @override
  Widget build(BuildContext context) {
    var darkMode = ref.watch(darkModeProvider);

    return Row(
      children: [
        GestureDetector(
          onTap: (){
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                builder: (context){
                  return
                      Wrap(
                          children: [
                            ListTile(
                              leading: AppLargeText(text: 'Languages',size: 16,),
                              trailing: IconButton(icon: const Icon(Icons.close),onPressed: (){navigatePop(context);},),
                            ),
                            buildTileItem('Bahasa', 1),
                            buildTileItem('Deutsch', 2),
                            buildTileItem('English', 3),
                            buildTileItem('Espanol', 4),
                            buildTileItem('Francaise', 5),
                            buildTileItem('Italiano', 6),
                            buildTileItem('Portugues', 7),
                            buildTileItem('Svenska', 8),
                            buildTileItem('Turkce', 9),
                            buildTileItem('普通话', 10),
                            buildTileItem('بالعربية', 11),
                            buildTileItem('বাঙ্গালী', 12),




                          ]
                      );


                });
          },
            child: buildLangContainer(darkMode)),
        const Spacer(),
        buildFilterContainer(darkMode)
      ],

    );
  }

  Widget buildLangContainer(bool darkMode){
    return Container(
      padding:  EdgeInsets.all(10),
      height: 50,
      width: 90,
      decoration: BoxDecoration(
          color: darkMode?Color(0xFF000F24):Colors.white,

          borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 2,
            color: Colors.white70


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
          const Icon(Icons.language),
          SizedBox(width: 5),
          AppText(text: 'EN'),
        ],

      ),

    );

  }

  Widget buildFilterContainer( bool darkMode){
    return Container(
      padding: const EdgeInsets.all(10),
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          color: darkMode?Color(0xFF000F24):Color(0xFFFCFCFD),

          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 2,
                color: Colors.white70


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
          SizedBox(width: 5),

          AppText(text: 'Filter'),
        ],

      ),

    );

  }

  Widget buildTileItem(String text, int value, ) {
    return ListTile(
      leading: AppText(text: text),
      trailing: Radio<int>(
        groupValue: _groupValue,
        value: value,
        onChanged: (int? value) {
          // setState(() {
          //   _groupValue = value;
          // });
        },
        // other arguments
      ),
    );
  }
}


