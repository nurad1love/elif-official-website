import 'package:elif_site/features/footer/view/theme/footer_fonts.dart';
import 'package:flutter/material.dart';

Widget outProductsCol() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Наши продукты",
        style: FooterFonts.s32w500.copyWith(color: Colors.white),
      ),
      const SizedBox(
        height: 16,
      ),
      TextButton(
          onPressed: () {},
          child: Text(
            "ELIF Digitals",
            style: FooterFonts.s20w400.copyWith(color: Colors.white),
          )),
      const SizedBox(
        height: 16,
      ),
      TextButton(
          onPressed: () {},
          child: Text(
            "ELIF Education",
            style: FooterFonts.s20w400.copyWith(color: Colors.white),
          )),
      const SizedBox(
        height: 16,
      ),
      TextButton(
          onPressed: () {},
          child: Text(
            "ELIF Commerce",
            style: FooterFonts.s20w400.copyWith(color: Colors.white),
          ))
    ],
  );
}
