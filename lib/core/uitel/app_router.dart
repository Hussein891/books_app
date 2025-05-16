import 'package:books_app/features/home/data/presentation/view/home_view.dart';
import 'package:books_app/features/splash/presentation/views/splash.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeVeiw = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeVeiw, builder: (context, state) => const HomeView()),
    ],
  );
}
