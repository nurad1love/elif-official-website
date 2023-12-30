import 'dart:ui';
import 'package:elif_site/features/footer/view/pages/footer_page.dart';
import 'package:elif_site/features/header/view/widgets/header_content.dart';
import 'package:elif_site/features/main/view/widgets/chapters/chapters_row.dart';
import 'package:elif_site/features/main/view/widgets/sections/commerce_section.dart';
import 'package:elif_site/features/main/view/widgets/sections/digital_section.dart';
import 'package:elif_site/features/main/view/widgets/sections/education_section.dart';
import 'package:elif_site/features/main/view/widgets/text/content_text_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  final ScrollController _controller = ScrollController();

  String selectedLanguage = 'RU';

  final List<Widget> _sections = [
    const HeaderContent(),
    const TextBox(),
    const ChaptersRow(),
    const DigitalSection(),
    const EducationSection(),
    const CommerceSection(),
    const FooterScreen(),
  ];

  List<String> listOfApplications = [
    'Сайт',
    'Приложение',
    'Дизайн',
  ];

  void scrollToIndex(int index) {
    if (_controller.hasClients) {
      _controller.animateTo(
        index * 50.0, // Replace 50.0 with the height of your item
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  final List<ScrollPosition> _positions = [];

  void jumpTo(double value) {
    assert(_positions.isNotEmpty,
        'ScrollController not attached to any scroll views.');
    for (final ScrollPosition position in List<ScrollPosition>.of(_positions)) {
      position.jumpTo(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          extendBodyBehindAppBar: true,
          body: ListView(
            controller: _controller,
            shrinkWrap: true,
            children: List.generate(
              _sections.length,
              (index) => _sections[index],
            ),
          ),
        ),
        Container(
          color: Colors.black12,
          width: double.infinity,
          height: 140,
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 190),
                  Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => scrollToIndex(0),
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Image(
                          width: 200,
                          height: 60,
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  SizedBox(
                    // height: 40,
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        focusColor: Colors.black,
                        onTap: () => scrollToIndex(41),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: DefaultTextStyle(
                            style: GoogleFonts.jost(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffffffff),
                            ),
                            child: const Text('Elif Digitals'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  SizedBox(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => scrollToIndex(63),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: DefaultTextStyle(
                            style: GoogleFonts.jost(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffffffff),
                            ),
                            child: const Text('Elif Education'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  SizedBox(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => scrollToIndex(81),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: DefaultTextStyle(
                            style: GoogleFonts.jost(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffffffff),
                            ),
                            child: const Text('Elif Commerce'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  SizedBox(
                    height: 40,
                    child: DefaultTextStyle(
                      style: GoogleFonts.jost(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffffffff),
                      ),
                      child: const Text('About us'),
                    ),
                  ),
                  const SizedBox(width: 50),
                  SizedBox(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => scrollToIndex(150),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: DefaultTextStyle(
                            style: GoogleFonts.jost(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffffffff),
                            ),
                            child: const Text('Contacts'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    // padding: const EdgeInsets.all(10),
                    child: DefaultTextStyle(
                      style: GoogleFonts.jost(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      child: Text(selectedLanguage),
                    ),
                  ),
                  PopupMenuButton<String>(
                    onSelected: (String value) => setState(
                      () => selectedLanguage = value,
                    ),
                    icon: const Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>(
                        value: 'RU',
                        child: Text('RU'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'ENG',
                        child: Text('ENG'),
                      ),
                    ],
                  ),
                  const SizedBox(width: 160),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
