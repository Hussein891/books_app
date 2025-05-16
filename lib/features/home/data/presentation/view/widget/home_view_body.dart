import 'package:books_app/core/uitel/assets.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            FeaturdBooksListView(),
            const SizedBox(height: 40),
            Text('Bist Seller', style: Styles.titleStyle18),
            const SizedBox(height: 20),
            BistSellerListView(),
          ],
        ),
      ),
    );
  }
}

class BistSellerListView extends StatelessWidget {
  const BistSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage(AssetsData.testImage)),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.titleStyle2o,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
