import 'package:books_app/core/uitel/assets.dart';
import 'package:flutter/cupertino.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(AssetsData.testImage)),
        ),
      ),
    );
  }
}
