import 'package:books_app/features/home/presentation/view/book_details_view.dart';
import 'package:books_app/features/home/presentation/view/home_view.dart';
import 'package:books_app/features/splash/presentation/views/splash.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeVeiw = '/homeView';
  static const kDetailsVeiw = '/detailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeVeiw, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kDetailsVeiw,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
