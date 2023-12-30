// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ChapterBox extends StatefulWidget {
  final String image;
  final String elifIcon;

  const ChapterBox({
    super.key,
    required this.image,
    required this.elifIcon,
  });

  @override
  State<ChapterBox> createState() => _ChapterBoxState();
}

class _ChapterBoxState extends State<ChapterBox> {
  @override
  Widget build(BuildContext context) => Container(
        width: 450,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          border: Border.all(
            color: const Color(0xffA4A4A4),
          ),
        ),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(90),
          child: InkWell(
            borderRadius: BorderRadius.circular(90),
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(widget.elifIcon),
                  width: 167.7,
                  height: 123,
                ),
                const SizedBox(width: 16.7),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Image(
                    image: AssetImage(widget.image),
                    width: 81.6,
                    height: 81.6,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
