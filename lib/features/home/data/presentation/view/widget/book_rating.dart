import 'package:books_app/core/uitel/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star_rate, color: Colors.yellow),
        const SizedBox(width: 6.3),
        Text('4,8', style: Styles.titleStyle16),
        const SizedBox(width: 5),
        Opacity(opacity: .5, child: Text('(245)', style: Styles.titleStyle14)),
      ],
    );
  }
}
