import 'package:books_app/core/uitel/assets.dart';
import 'package:books_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBady extends StatefulWidget {
  const SplashViewBady({super.key});

  @override
  State<SplashViewBady> createState() => _SplashViewBadyState();
}

class _SplashViewBadyState extends State<SplashViewBady>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidinAnimation = Tween<Offset>(
      begin: const Offset(0, 16),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 8),
        SlidingText(slidinAnimation: slidinAnimation),
      ],
    );
  }
}
