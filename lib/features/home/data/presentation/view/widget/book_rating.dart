import 'package:books_app/core/uitel/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star_rate, color: Colors.yellow),
        const SizedBox(width: 6.3),
        Text('4,8', style: Styles.titleStyle16),
        const SizedBox(width: 5),
        Text(
          '(245)',
          style: Styles.titleStyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
