import 'package:elif_site/features/footer/view/theme/footer_colors.dart';
import 'package:elif_site/features/footer/view/theme/footer_fonts.dart';
import 'package:elif_site/features/footer/view/widgets/contacts_widget.dart';
import 'package:elif_site/features/footer/view/widgets/media_widget.dart';
import 'package:elif_site/features/footer/view/widgets/our_products_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class FooterScreen extends StatefulWidget {
  const FooterScreen({super.key});

  @override
  State<FooterScreen> createState() => _FooterScreenState();
}

class _FooterScreenState extends State<FooterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 801.h,
        decoration: BoxDecoration(color: FooterColors.footerBg),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 36),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "ELIF",
                    style: FooterFonts.s32w500,
                  ),
                  SizedBox(
                    width: 28.w,
                  ),
                  Container(
                    width: 1300.w,
                    height: 1,
                    decoration: const BoxDecoration(color: Colors.white),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 118,
                ),
                child: Row(
                  children: [
                    contactsCol(),
                    SizedBox(
                      width: 41.w,
                    ),
                    mediaCol(),
                    SizedBox(
                      width: 41.w,
                    ),
                    outProductsCol(),
                    Column(
                      children: [
                        Text("Адрес", style: FooterFonts.s32w500.copyWith(color: Colors.white),),
                        Text("Кыргызстан, Бишкек, ул. Примерная 123", style: FooterFonts.s20w400.copyWith(color: Colors.white),),
                        
                      ],
                    )
                  ],
                ),
              ),
              
               Container(
                    width: 1300.w,
                    height: 1,
                    decoration: const BoxDecoration(color: Colors.white),
                  )
            ],
          ),
        ),
      ),
    );
  }
}


