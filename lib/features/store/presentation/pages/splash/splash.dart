import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tinder_clone/core/constants/color.dart';
import 'package:tinder_clone/core/constants/icon.dart';
import 'package:tinder_clone/core/router/route_constants.dart';
import 'package:tinder_clone/features/store/presentation/pages/splash/bloc/splash_bloc.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is NavigationState) {
          context.goNamed(
            RouteConstants.login,
          );
        }
      },
      child: BlocBuilder<SplashBloc, SplashState>(
        builder: (context, state) => Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.tertiary,
                  AppColors.quaternary,
                ],
              ),
            ),
            child: SizedBox(
              width: 375.w,
              height: 812.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      SplashIcons.tinder,
                      height: 130.07.h,
                      width: 110.71.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
