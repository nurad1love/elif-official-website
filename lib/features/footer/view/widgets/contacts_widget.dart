import 'package:elif_site/features/footer/view/theme/footer_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget contactsCol() {
  return SizedBox(
    height: 130,
    child: Column(
      children: [
        Text(
          "Контакты",
          style: FooterFonts.s32w500.copyWith(color: Colors.white),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          "+996 501 123 456",
          style: FooterFonts.s20w400.copyWith(color: Colors.white),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          "+996 501 123 456",
          style: FooterFonts.s20w400.copyWith(color: Colors.white),
        )
      ],
    ),
  );
}
