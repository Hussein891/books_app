import 'package:books_app/features/home/data/presentation/view/widget/custom_book_details_app_bar.dart';
import 'package:books_app/features/home/data/presentation/view/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDeteilsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .1),
            child: CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
