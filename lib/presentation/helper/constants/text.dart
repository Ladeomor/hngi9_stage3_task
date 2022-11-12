import 'package:country_app/logic/dark_mode_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';


class LogoText extends ConsumerWidget {
  final String text;
  final Color color;
  double size;
  LogoText({Key? key, required this.text, this.color=Colors.black, this.size = 30}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var darkMode = ref.watch(darkModeProvider);

    return Text(
        text,
        style: GoogleFonts.lobster(color: darkMode?Colors.white: Colors.black, fontSize: size, fontWeight: FontWeight.w500)
    );
  }
}

class AppLargeText extends ConsumerWidget {
  final String text;
  final Color color;
  double size;



  AppLargeText({Key? key, required this.text, this.color=Colors.black54, this.size = 30}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var darkMode = ref.watch(darkModeProvider);

    return Text(
        text,
        style: GoogleFonts.poppins(color: darkMode?Colors.white:Colors.black, fontSize: size, fontWeight: FontWeight.w400)
    );
  }
}

class AppText extends ConsumerWidget {
  final String text;
  final Color color;
  double size;



  AppText({Key? key, required this.text, this.color=Colors.black54, this.size = 15}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var darkMode = ref.watch(darkModeProvider);

    return Text(
        text,
        style: GoogleFonts.quicksand(color: darkMode?Colors.white:Colors.black, fontSize: size)
    );
  }
}

