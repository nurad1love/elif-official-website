import 'package:elif_site/features/main/view/widgets/buttons/details_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationSection extends StatefulWidget {
  const EducationSection({super.key});

  @override
  State<EducationSection> createState() => _EducationSectionState();
}

class _EducationSectionState extends State<EducationSection> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection() {
    _scrollController.animateTo(
      800,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 1007,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Image(
            width: 1007,
            height: 1081,
            fit: BoxFit.cover,
            image: AssetImage('assets/images/face2.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 182,
              bottom: 88, 
              right: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 856,
                  height: 644,
                  child: Text(
                    'ELIF Education - курс по IT, обеспечивающий практические навыки и экспертные знания для успешной карьеры в высокотехнологичной области.',
                    textAlign: TextAlign.end,
                    style: GoogleFonts.jost(
                      fontSize: 64,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff3CA74D),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(left: 364),
                  child: Button(
                    text: 'Записаться на курсы',
                    color: const Color.fromRGBO(60, 167, 77, 0.75),
                    borderColor: const Color(0xff3CA74D),
                    onPressed: () => _scrollToSection,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
