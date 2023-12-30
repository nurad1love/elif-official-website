import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatefulWidget {
  final String labelText;
  final String hintText;

  const SearchField({
    super.key,
    required this.labelText,
    required this.hintText,
  }) : super();

  @override
  State<SearchField> createState() => _SearchFieldsState();
}

class _SearchFieldsState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 659,
      height: 125,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelText,
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 81,
            padding: const EdgeInsets.only(
              left: 40,
              top: 16,
              // bottom: 10,
            ),
            decoration: BoxDecoration(
              color: const Color(0xff77B6FF),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xff0075FF)),
            ),
            child: TextFormField(
              style: GoogleFonts.roboto(
                fontSize: 24,
                color: Colors.black
              ),
              cursorHeight: 24,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                hintText: widget.hintText,
                hintStyle: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff0075FF),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
