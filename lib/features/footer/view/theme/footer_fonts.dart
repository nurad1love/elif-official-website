import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FooterFonts {
  static TextStyle s32w500 = GoogleFonts.jost(
    textStyle: const TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
  );
  //     const TextStyle(fontSize: 32, fontWeight: FontWeight.w500);
  static TextStyle s20w400 =
      GoogleFonts.jost(
    textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
  );
}
