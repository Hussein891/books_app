import 'package:books_app/core/uitel/styles.dart';
import 'package:books_app/features/home/presentation/view/widget/book_action.dart';
import 'package:books_app/features/home/presentation/view/widget/book_rating.dart';
import 'package:books_app/features/home/presentation/view/widget/custom_book_image.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(),
        ),
        const SizedBox(height: 43),
        Text('The Jungle Book', style: Styles.titleStyle30),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyred Kipling',
            style: Styles.titleStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 18),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        BookAction(),
      ],
    );
  }
}
