  // ignore_for_file: unused_local_variable

  import 'package:flutter/material.dart';

void showLanguageMenu(BuildContext context) {
    final RenderBox appBarRenderBox = context.findRenderObject() as RenderBox;
    final RenderBox overlayRenderBox = Overlay.of(context).context.findRenderObject() as RenderBox;

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        appBarRenderBox.size.width - 100,
        appBarRenderBox.size.height,
        0,
        0,
      ),
      items: [
        const PopupMenuItem(
          value: 'Ru',
          child: Row(
            children: [
              Icon(Icons.language, color: Colors.blue),
              SizedBox(width: 8),
              Text('Ru'),
            ],
          ),
        ),
        const PopupMenuItem(
          value: 'En',
          child: Row(
            children: [
              Icon(Icons.language, color: Colors.blue),
              SizedBox(width: 8),
              Text('En'),
            ],
          ),
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      if (value != null) {
        // Обработка выбора языка
        print('Выбран язык: $value');
      }
    });
  }
