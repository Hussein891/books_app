import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text('Newset Books', style: Styles.textStyle18),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
