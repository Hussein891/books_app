import 'package:books_app/features/home/presentation/view/widget/custom_book_image.dart';
import 'package:flutter/cupertino.dart';

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
          return CustomBookImage();
        },
      ),
    );
  }
}
