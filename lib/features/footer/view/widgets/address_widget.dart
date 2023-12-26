import 'package:elif_site/features/footer/view/theme/footer_fonts.dart';
import 'package:flutter/material.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Адрес",
          style: FooterFonts.s32w500.copyWith(color: Colors.white),
        ),
        Text(
          "Кыргызстан, Бишкек, ул. Примерная 123",
          style: FooterFonts.s20w400.copyWith(color: Colors.white),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          width: 380,
          height: 380,
          decoration: BoxDecoration(color: Colors.white),
        )
      ],
    );
  }
}
