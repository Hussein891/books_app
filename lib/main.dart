import 'package:books_app/consten.dart';
import 'package:books_app/core/uitel/app_router.dart';
import 'package:books_app/core/uitel/service_locator.dart';
import 'package:books_app/features/home/data/repo/home_repo_impl.dart';
import 'package:books_app/features/home/presentation/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:books_app/features/home/presentation/manger/newset%20books%20cubit/newset_books_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedbooksCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubitCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPraimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        //home: SplashView(),
      ),
    );
  }
}
