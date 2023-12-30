import 'package:flutter/material.dart';
import 'language_menu.dart';

class MyNavbar extends StatelessWidget implements PreferredSizeWidget {
  const MyNavbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/images/logo.png', height: 48.58, width: 52),
              const SizedBox(width: 10),
              const Text('Elif Digitals', style: TextStyle(fontSize: 28, fontFamily: 'Jost',fontWeight: FontWeight.w400)),
              const SizedBox(width: 10),
              const Text('Elif Education', style: TextStyle(fontSize: 28, fontFamily: 'Jost',fontWeight: FontWeight.w400)),
              const SizedBox(width: 10),
              const Text('Elif Commerce', style: TextStyle(fontSize: 28, fontFamily: 'Jost',fontWeight: FontWeight.w400)),
              const SizedBox(width: 10),
              const Text('О нас', style: TextStyle(fontSize: 28, fontFamily: 'Jost',fontWeight: FontWeight.w400)),
              const SizedBox(width: 10),
              const Text('Контакты', style: TextStyle(fontSize: 28, fontFamily: 'Jost',fontWeight: FontWeight.w400)),
            ],
          ),
          InkWell(
            onTap: () {
              showLanguageMenu(context);
            },
            child: const Row(
              children: [
                Icon(Icons.language),
                SizedBox(width: 8),
                Text('Ru'), // По умолчанию
              ],
            ),
          ),
        ],
      ),
    );
  }
}

