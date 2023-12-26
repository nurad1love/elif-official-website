import 'package:elif_site/features/footer/view/pages/footer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const EliWebfSite());

class EliWebfSite extends StatelessWidget {
  const EliWebfSite({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1920, 1080),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: FooterScreen(),
          );
        });
  }
}
