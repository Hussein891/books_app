import 'package:books_app/features/home/presentation/view/widget/bist_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BistSellerListView extends StatelessWidget {
  const BistSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BistSellerListViewItem(),
        );
      },
    );
  }
}
