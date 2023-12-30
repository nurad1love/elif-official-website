import 'package:elif_site/features/main/view/widgets/buttons/details_button.dart';
import 'package:elif_site/features/main/view/widgets/search_field.dart';
import 'package:elif_site/features/main/view/widgets/text/list_of_app_categoies.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmSection extends StatefulWidget {
  const ConfirmSection({super.key});

  @override
  State<ConfirmSection> createState() => _ConfirmSectionState();
}

class _ConfirmSectionState extends State<ConfirmSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 41),
      child: SizedBox(
        width: 583 + 322,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 95,
                bottom: 72,
                right: 112,
              ),
              child: Text(
                'Оставьте нам заявку',
                style: GoogleFonts.roboto(
                  fontSize: 47,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 67,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 228,
                      height: 67,
                      decoration: BoxDecoration(
                        color: const Color(0xff003D85),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xff003D85),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          listOfApplications[index],
                          style: GoogleFonts.roboto(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(width: 20),
                itemCount: listOfApplications.length,
              ),
            ),
            const SizedBox(height: 72),
            const SearchField(
              labelText: 'ФИО',
              hintText: 'Лев Львович',
            ),
            const SizedBox(height: 52),
            const SearchField(
              labelText: 'Телефон',
              hintText: 'Введите контактный номер',
            ),
            const SizedBox(height: 52),
            const SearchField(
              labelText: 'Опишите кратко ваш проект',
              hintText: 'Введите описание проекта',
            ),
            const SizedBox(height: 171),
            Padding(
              padding: const EdgeInsets.only(right: 447.2),
              child: Button(
                text: 'Отправить заявку',
                color: const Color(0xff0075FF),
                borderColor: const Color(0xff0075FF),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 72),
            Padding(
              padding: const EdgeInsets.only(right: 322),
              child: SizedBox(
                width: 583,
                child: Text(
                  'Ваша заявка принята. Ожидайте ответа',
                  style: GoogleFonts.roboto(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
