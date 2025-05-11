import 'package:books_app/features/home/data/presentation/view/widget/custom_app_bar.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [const CustomAppBar()]);
  }
}
