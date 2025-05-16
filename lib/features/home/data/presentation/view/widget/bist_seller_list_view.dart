import 'package:books_app/core/uitel/assets.dart';
import 'package:books_app/core/uitel/styles.dart';
import 'package:flutter/cupertino.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(width: 3),
              Text('J.K. Rowling', style: Styles.titleStyle14),
              const SizedBox(width: 3),
              Row(
                children: [
                  Text(
                    '19.99 €',
                    style: Styles.titleStyle2o.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
