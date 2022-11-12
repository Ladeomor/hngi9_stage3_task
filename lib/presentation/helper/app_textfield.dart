import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),

      height: 50,
      width: 500,
      decoration: BoxDecoration(
        // border: Border.all(width: 1, color: Colors.black54),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child:  TextField(
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1,color: Color(0xFFF2F4F7))
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1,color: Color(0xFFF2F4F7) )
          ),

          fillColor: const Color(0xFFF2F4F7),
          filled: true,
          hintText: 'Search Country',
          hintStyle: GoogleFonts.aclonica( color: const Color(0XFF667085), fontSize: 16, fontWeight: FontWeight.w500),
          prefixIcon: const Icon(Icons.search, color: Color(0xFF667085),),

        ),

      ),

    );

  }
}
