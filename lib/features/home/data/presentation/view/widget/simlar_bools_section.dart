import 'package:books_app/core/uitel/styles.dart';
import 'package:books_app/features/home/data/presentation/view/widget/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';

class SimlarBooksSection extends StatelessWidget {
  const SimlarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You can also like', style: Styles.titleStyle16),
        const SizedBox(height: 16),
        SimilarBooksListView(),
      ],
    );
  }
}
