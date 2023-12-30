import 'package:elif_site/features/main/view/pages/main_content_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const EliWebfSite());

class EliWebfSite extends StatelessWidget {
  const EliWebfSite({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainContent(),
    );
  }
}