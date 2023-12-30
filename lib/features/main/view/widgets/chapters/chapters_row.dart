// ignore_for_file: must_be_immutable

import 'package:elif_site/features/main/view/widgets/chapters/category_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChaptersRow extends StatelessWidget {
  const ChaptersRow({
    super.key
  });

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.white,
        width: double.infinity,
        height: 478,
        child: Column(
          // shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 759,
                left: 750,
                top: 20,
                bottom: 88,
              ),
              child: Text(
                'Наши продукты',
                style: GoogleFonts.jost(
                  fontSize: 54,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 200,
                right: 200,
                // bottom: 142,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChapterBox(
                    
                    image: 'assets/icons/digital_icon.png',
                    elifIcon: 'assets/icons/elif_logo.png',
                  ),
                  ChapterBox(
                   
                    image: 'assets/icons/education_icon.png',
                    elifIcon: 'assets/icons/elif_logo.png',
                  ),
                  ChapterBox(
                    
                    image: 'assets/icons/commerce_icon.png',
                    elifIcon: 'assets/icons/elif_logo.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
