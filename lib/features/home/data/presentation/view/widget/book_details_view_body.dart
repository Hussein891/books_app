import 'package:books_app/features/home/data/presentation/view/widget/book_details_section.dart';
import 'package:books_app/features/home/data/presentation/view/widget/custom_book_details_app_bar.dart';
import 'package:books_app/features/home/data/presentation/view/widget/simlar_bools_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDeteilsAppBar(),
                BookDetailsSection(),
                Expanded(child: const SizedBox(height: 50)),
                SimlarBooksSection(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
