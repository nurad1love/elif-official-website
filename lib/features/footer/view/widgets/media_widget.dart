import 'package:elif_site/features/footer/view/theme/footer_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
              ),
              SizedBox(
                width: 10.w,
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
              ),
              SizedBox(
                width: 10.w,
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.telegram, color: Colors.white),
              ),
              SizedBox(
                width: 10.w,
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
