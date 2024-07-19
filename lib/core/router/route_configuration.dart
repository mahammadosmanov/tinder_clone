import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tinder_clone/core/router/route_constants.dart';
import 'package:tinder_clone/features/store/presentation/pages/login/bloc/login_bloc.dart';
import 'package:tinder_clone/features/store/presentation/pages/login/login.dart';
import 'package:tinder_clone/features/store/presentation/pages/splash/bloc/splash_bloc.dart';
import 'package:tinder_clone/features/store/presentation/pages/splash/splash.dart';

class AppRouter {
  AppRouter._();

  static AppRouter instance = AppRouter._();

  static GoRouter goRouter = GoRouter(
    initialLocation: RouteConstants.splash,
    routes: [
      GoRoute(
        name: RouteConstants.splash,
        path: '/splash',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: BlocProvider(
              create: (BuildContext context) => SplashBloc()
                ..add(
                  NavigateToLoginEvent(),
                ),
              child: const SplashView(),
            ),
          );
        },
      ),
      GoRoute(
        name: RouteConstants.login,
        path: '/login',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: MultiBlocProvider(
              providers: [
                BlocProvider<LoginBloc>(
                  create: (BuildContext context) => LoginBloc(),
                ),
              ],
              child: const LoginView(),
            ),
          );
        },
      ),
    ],
  );
}
