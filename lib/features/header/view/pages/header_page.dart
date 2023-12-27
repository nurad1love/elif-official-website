import 'package:elif_site/features/header/view/widgets/header_content.dart';
import 'package:elif_site/features/header/view/widgets/header_widgets.dart';
import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: MyNavbar(),
        ),
        body: HeaderContent(),
      ),
    );
  }
}
