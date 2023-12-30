import 'package:elif_site/features/main/view/widgets/text/about_com_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBox extends StatelessWidget {
  const TextBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      height: 720,
       decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(15),
      ),
      foregroundDecoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.white,
            width: 2.0,
          ),
        ),
      ),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 216,
              bottom: 248,
              left: 200,
              right: 112,
            ),
            child: SizedBox(
              width: 1221,
              height: 256,
              child: Wrap(
                children: [
                  Text(
                    contentText,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.jost(
                      fontSize: 44,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 104, bottom: 104, right: 268),
            child: Image.asset(
              'assets/icons/elif_icon.png',
              width: 119,
              height: 512,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
