import 'package:books_app/core/uitel/app_router.dart';
import 'package:books_app/core/uitel/assets.dart';
import 'package:books_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:get/utils.dart';

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
    initSlidingAnimation();
    navigateToHome();
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

  void initSlidingAnimation() {
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

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.fade,
      //   duration: Duration(microseconds: 250),
      // );
      // ignore: use_build_context_synchronously
      GoRouter.of(context).push(AppRouter.kHomeVeiw);
    });
  }
}
