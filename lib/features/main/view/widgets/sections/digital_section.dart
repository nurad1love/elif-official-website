import 'package:elif_site/features/main/view/widgets/buttons/details_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DigitalSection extends StatefulWidget {
  const DigitalSection({super.key});

  @override
  State<DigitalSection> createState() => _DigitaStatelSection();
}

class _DigitaStatelSection extends State<DigitalSection> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 1007,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 321,
              bottom: 318 - 49 - 32,
              left: 200,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 849,
                  height: 368,
                  child: Text(
                    'ELIF Digitals - IT команда, разрабатывающий продукты для вашего бизнеса',
                    style: GoogleFonts.jost(
                      fontSize: 64,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff0075FF),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 129),
                  child: Button(
                    text: 'Узнать подробнее',
                    color: const Color.fromRGBO(0, 117, 255, 0.75),
                    borderColor: const Color(0xff0075FF),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const Image(
            width: 871,
            height: 947,
            fit: BoxFit.fill,
            image: AssetImage('assets/images/face1.png'),
          ),
        ],
      ),
    );
  }
}
