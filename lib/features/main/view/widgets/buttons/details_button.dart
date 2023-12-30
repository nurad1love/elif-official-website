// ignore_for_file: use_full_hex_values_for_flutter_colors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatefulWidget {
  final String text;
  final Color color;
  final Color borderColor;
  void Function()? onPressed;

  Button({
    super.key,
    required this.text,
    required this.color,
    required this.borderColor,
    required this.onPressed,
  });

  @override
  State<Button> createState() => _DetailsButtonState();
}

class _DetailsButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(21),
      child: InkWell(
        borderRadius: BorderRadius.circular(21),
        onTap: widget.onPressed,
        child: Container(
          width: 324,
          height: 61,
          padding: const EdgeInsets.symmetric(horizontal: 35),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(21),
            border: Border.all(
              color: widget.borderColor,
            ),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: GoogleFonts.jost(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
