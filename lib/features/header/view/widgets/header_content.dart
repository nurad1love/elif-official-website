import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 932,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 160,
            top: 240,
            child: Text('ELIF - МЕНЯЕТ МИР',
                style: GoogleFonts.jost(
                  fontSize: 70,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                )),
          ),
          Positioned(
            left: 160,
            top: 358,
            child: Text(
              'Мы создаем продукты облегчающие жизни людей',
              style: GoogleFonts.jost(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 160,
            top: 440,
            child: Container(
              width: 396,
              height: 67,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                  colors: [
                    Color(0xff3879F5),
                    Color(0xff143E8F),
                  ],
                ),
              ),
              child: ElevatedButton(
                onPressed: () => print('Кнопка нажата'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white38,
                  backgroundColor: Colors.transparent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 19),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                  shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
                ),
                child: Center(
                  child: Text(
                    'Присоединиться к команде!',
                    style: GoogleFonts.jost(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
