import 'package:elif_site/features/footer/view/theme/footer_fonts.dart';
import 'package:flutter/material.dart';

Widget contactsCol() {
  return SizedBox(
    width: 200,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Контакты",
          style: FooterFonts.s32w500.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "+996 501 123 456",
          style: FooterFonts.s20w400.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "+996 501 123 456",
          style: FooterFonts.s20w400.copyWith(color: Colors.white),
        )
      ],
    ),
  );
}
