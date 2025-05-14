import 'package:books_app/core/uitel/styles.dart';
import 'package:books_app/features/home/data/presentation/view/widget/custom_app_bar.dart';
import 'package:books_app/features/home/data/presentation/view/widget/featured_list_view.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            FeaturdBooksListView(),
            const SizedBox(height: 40),
            Text('Bist Seller', style: Styles.titleMedium),
          ],
        ),
      ),
    );
  }
}
