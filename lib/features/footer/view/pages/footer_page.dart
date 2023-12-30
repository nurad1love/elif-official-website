import 'package:elif_site/features/footer/view/theme/footer_colors.dart';
import 'package:elif_site/features/footer/view/theme/footer_fonts.dart';
import 'package:elif_site/features/footer/view/widgets/address_widget.dart';
import 'package:elif_site/features/footer/view/widgets/contacts_widget.dart';
import 'package:elif_site/features/footer/view/widgets/media_widget.dart';
import 'package:elif_site/features/footer/view/widgets/our_products_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterScreen extends StatefulWidget {
  const FooterScreen({super.key});

  @override
  State<FooterScreen> createState() => _FooterScreenState();
}

class _FooterScreenState extends State<FooterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 810,
      decoration: BoxDecoration(color: FooterColors.footerBg),
      padding: const EdgeInsets.symmetric(vertical: 36),
      child: ListView(
        shrinkWrap: true,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/elif-logo 3.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                height: 79,
              ),
              const SizedBox(
                width: 28,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 39.5),
                  Container(
                    width: 1464,
                    height: 1,
                    decoration: const BoxDecoration(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 55,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        contactsCol(),
                        const SizedBox(
                          width: 105,
                        ),
                        mediaCol(),
                        const SizedBox(
                          width: 41,
                        ),
                        outProductsCol(),
                        const SizedBox(
                          width: 41,
                        ),
                        const AddressWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 1600,
                height: 1,
                decoration: const BoxDecoration(color: Colors.white),
              ),
              const SizedBox(
                height: 36,
              ),
              Text(
                "2023 Все права защищены",
                style: FooterFonts.s20w400.copyWith(color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
