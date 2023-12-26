import 'package:elif_site/features/footer/view/theme/footer_colors.dart';
import 'package:elif_site/features/footer/view/widgets/address_widget.dart';
import 'package:elif_site/features/footer/view/widgets/contacts_widget.dart';
import 'package:elif_site/features/footer/view/widgets/media_widget.dart';
import 'package:elif_site/features/footer/view/widgets/our_products_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        height: 801,
        decoration: BoxDecoration(color: FooterColors.footerBg),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 36),
            child: Column(
              children: [
                _logoAndInfoRow(),
                Container(
                  width: 1600.w,
                  height: 1,
                  decoration: const BoxDecoration(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Row _logoAndInfoRow() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _logo(),
      SizedBox(
        width: 28.w,
      ),
      _secondRowPart(),
    ],
  );
}

Widget _logo() {
  return SvgPicture.asset(
    'assets/imgs/elif-logo 3.svg',
    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
    height: 79,
  );
}

Widget _secondRowPart() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 39.5),
      Container(
        width: 1464.w,
        height: 1,
        decoration: const BoxDecoration(color: Colors.white),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 55,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(
              width: 41.w,
            ),
            AddressWidget(),
          ],
        ),
      ),
    ],
  );
}
