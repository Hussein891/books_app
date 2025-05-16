import 'package:books_app/core/uitel/styles.dart';
import 'package:books_app/features/home/data/presentation/view/widget/bist_seller_list_view.dart';
import 'package:books_app/features/home/data/presentation/view/widget/custom_app_bar.dart';
import 'package:books_app/features/home/data/presentation/view/widget/featured_list_view.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const CustomAppBar(),
              ),
              FeaturdBooksListView(),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Bist Seller', style: Styles.titleStyle18),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),

        SliverToBoxAdapter(child: BistSellerListView()),
      ],
    );
  }
}
