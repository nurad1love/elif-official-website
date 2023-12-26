import 'package:elif_site/features/footer/view/theme/footer_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget mediaCol() {
  return SizedBox(
    height: 125,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            "Медиа",
            style: FooterFonts.s32w500.copyWith(color: Colors.white,),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: (){},
              icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.white)
            ),
            SizedBox(
              width: 5.w,
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
            ),
            SizedBox(
              width: 5.w,
            ),
            IconButton(
              onPressed: () {},
              icon:const FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
            ),
            SizedBox(
              width: 5.w,
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.telegram, color: Colors.white),
            ),
            SizedBox(
              width: 5.w,
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white),
            ),
          ],
        )
      ],
    ),
  );
}
