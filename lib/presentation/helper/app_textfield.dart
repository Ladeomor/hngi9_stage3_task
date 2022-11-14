import 'package:country_app/data/models/countries_model.dart';
import 'package:country_app/data/repository/countries_api.dart';
import 'package:country_app/logic/dark_mode_notifier.dart';
import 'package:country_app/logic/search_notifier.dart';
import 'package:country_app/logic/view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchTextField extends HookConsumerWidget {

  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    List<Countries> countriesSearchList =
        ref.watch(searchControllerProvider.notifier).countries;

    var darkMode = ref.watch(darkModeProvider);
    final searchFieldController = useTextEditingController();
    final FocusNode node = FocusNode();

    final _isSearchFieldEmpty = useState<bool>(true);

    final _searchList = useState<List<Countries>>([]);
    bool isSearchFieldEmpty() {
      return searchFieldController.text.isEmpty;
    }

    useEffect(() {
      searchFieldController.addListener(() {
        _isSearchFieldEmpty.value = isSearchFieldEmpty();

      });
    }, [searchFieldController]);

    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),

      height: 50,
      decoration: BoxDecoration(
        // border: Border.all(width: 1, color: Colors.black54),
        borderRadius: BorderRadius.circular(5),
      ),
      child:  TextField(
        autofocus: true,
        focusNode: node,

        controller: searchFieldController,

        onChanged: (val){
          _searchList.value = ref.watch(searchControllerProvider.notifier).getBySearch(val);
        },
        decoration: InputDecoration(
          focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1,color: darkMode?Color(0xFF98A2B3).withOpacity(0.2):Color(0xFFF2F4F7))
          ),
          enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1,color: darkMode?Color(0xFF98A2B3).withOpacity(0.2):Color(0xFFF2F4F7) )
          ),

          fillColor:  darkMode?Color(0xFF98A2B3).withOpacity(0.2):Color(0xFFF2F4F7),
          filled: true,
          hintText: 'Search Country',
          hintStyle: GoogleFonts.poppins( color: const Color(0XFF667085), fontSize: 16, fontWeight: FontWeight.w500),
          prefixIcon: const Icon(Icons.search, color: Color(0xFF667085),),

        ),

      ),

    );

  }
}
