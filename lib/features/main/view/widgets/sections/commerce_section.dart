import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommerceSection extends StatefulWidget {
  const CommerceSection({super.key});

  @override
  State<CommerceSection> createState() => _CommerceSectionState();
}

class _CommerceSectionState extends State<CommerceSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1196,
      color: Colors.white,
      child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30,
              top: 61,
              left: 390,
              right: 368,
            ),
            child: Text(
              'ELIF Commerce - это быстро и удобно!',
              style: GoogleFonts.jost(
                fontSize: 64,
                fontWeight: FontWeight.w600,
                color: const Color(0xffFE793D),
              ),
            ),
          ),
          const Image(
            width: double.infinity,
            height: 890,
            fit: BoxFit.cover,
            image: AssetImage('assets/images/face3.png'),
          ),
        ],
      ),
    );
  }
}
