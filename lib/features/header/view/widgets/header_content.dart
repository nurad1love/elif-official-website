import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/bg.jpeg',
          fit: BoxFit.cover,
        ),
        const Positioned(
          left: 160,
          top: 240,
          child: Text(
            'ELIF - МЕНЯЕТ МИР',
            style: TextStyle(
              color: Colors.white,
              fontSize: 82,
              fontFamily: 'Jost',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        const Positioned(
          left: 160,
          top: 358,
          child: Text(
            'Мы создаем продукты облегчающие жизни людей',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'Jost',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        Positioned(
          left: 159,
          top: 440,
          child: ElevatedButton(
            onPressed: () {
              print('Кнопка нажата');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 19),
              primary: Color(0xFF3878F5),
              onPrimary: Color(0xFF133D8F),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadowColor: Color(0x3F000000),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Присоединиться к команде!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
