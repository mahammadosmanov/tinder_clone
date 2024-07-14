import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tinder_clone/core/constants/color.dart';
import 'package:tinder_clone/core/constants/icon.dart';
import 'package:tinder_clone/core/constants/style.dart';
import 'package:tinder_clone/core/router/route_constants.dart';
import 'package:tinder_clone/features/store/presentation/pages/login/bloc/login_bloc.dart';
import 'package:tinder_clone/features/store/presentation/pages/splash/bloc/splash_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is NavigationState) {
          context.goNamed(
            RouteConstants.home,
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
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
                children: [
                  133.verticalSpace,
                  _buildLogo(),
                  const Spacer(),
                  SizedBox(
                    width: 323.w,
                    height: 55.h,
                    child: AutoSizeText(
                      "By clicking Log in, you agree with our Terms. Learn how we process your data in our Privacy Policy and Cookie Policy.",
                      style: WhiteText.smallBold,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  16.verticalSpace,
                  _buildLoginButton(
                    () {},
                  ), //TODO add login functionality
                  76.verticalSpace,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return SizedBox(
      width: 160.w,
      height: 60.h,
      child: Column(
        children: [
          SizedBox(
            width: 150.w,
            height: 35.55.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  LoginIcons.tinder,
                  height: 35.55.h,
                  width: 30.28.w,
                ),
                Image.asset(
                  LoginIcons.tinderText,
                  height: 35.55.h,
                  width: 114.15.w,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 161.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 30.w,
                  height: 20.h,
                  child: Text(
                    "pets",
                    style: WhiteText.smallBold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildLoginButton(
    void Function() onTapLoginButton,
  ) {
    return GestureDetector(
      onTap: onTapLoginButton,
      child: Stack(
        children: [
          Container(
            width: 323.w,
            height: 54.h,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(26.5.r),
            ),
            child: Center(
              child: AutoSizeText(
                "Log in with Google",
                style: BlackText.mediumBold,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              20.w,
              16.h,
              0,
              16.h,
            ),
            child: SizedBox(
              width: 22.h,
              height: 22.h,
              child: Image.asset(
                LoginIcons.google,
                width: 22.h,
                height: 22.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
