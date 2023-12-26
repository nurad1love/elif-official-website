import 'package:elif_site/features/footer/view/theme/footer_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget mediaCol() {
  return SizedBox(
    height: 125,
    child: Column(
      children: [
        Text(
          "Медиа",
          style: FooterFonts.s32w500.copyWith(color: Colors.white),
        ),
        SizedBox(
          height: 16.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            children: [
              Icon(
                Icons.facebook,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.w,
              ),
              Icon(Icons.facebook, color: Colors.white),
              SizedBox(
                width: 10.w,
              ),
              Icon(Icons.facebook, color: Colors.white),
              SizedBox(
                width: 10.w,
              ),
              Icon(Icons.facebook, color: Colors.white),
              SizedBox(
                width: 10.w,
              ),
              Icon(Icons.facebook, color: Colors.white)
            ],
          ),
        )
      ],
    ),
  );
}

