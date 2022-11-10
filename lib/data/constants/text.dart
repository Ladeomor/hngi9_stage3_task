import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LogoText extends StatelessWidget {
  final String text;
  final Color color;
  double size;
  LogoText({Key? key, required this.text, this.color=Colors.black, this.size = 30}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: GoogleFonts.lobster(color: Colors.black, fontSize: size, fontWeight: FontWeight.w500)
    );
  }
}

class AppLargeText extends StatelessWidget {
  final String text;
  final Color color;
  double size;



  AppLargeText({Key? key, required this.text, this.color=Colors.black87, this.size = 30}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(
        text,
        style: GoogleFonts.poppins(color: Colors.black, fontSize: size, fontWeight: FontWeight.w500)
    );
  }
}

class AppText extends StatelessWidget {
  final String text;
  final Color color;
  double size;



  AppText({Key? key, required this.text, this.color=Colors.black54, this.size = 15}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(
        text,
        style: GoogleFonts.quicksand(color: Colors.black, fontSize: size)
    );
  }
}

