import 'package:books_app/features/home/data/presentation/view/widget/custom_app_bar.dart';
import 'package:books_app/features/home/data/presentation/view/widget/custom_lsit_view_item.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [const CustomAppBar(), FeaturdBooksListView()]);
  }
}

class FeaturdBooksListView extends StatelessWidget {
  const FeaturdBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FeaturedListViewItem();
        },
      ),
    );
  }
}
