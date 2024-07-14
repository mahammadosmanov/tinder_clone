import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tinder_clone/core/constants/color.dart';
import 'package:tinder_clone/core/helper/locator.dart';
import 'package:tinder_clone/core/router/route_configuration.dart';
import 'package:tinder_clone/features/store/data/datasources/local_datasource.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setupGetIt();
  await locator.get<LocalDataSource>().setup();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('tr'),
        Locale('az'),
      ],
      path: 'assets/language',
      assetLoader: const JsonAssetLoader(),
      startLocale: const Locale('en'),
      useFallbackTranslations: true,
      useOnlyLangCode: true,
      fallbackLocale: const Locale('en'),
      child: const TinderClone(),
    ),
  );
}

class TinderClone extends StatelessWidget {
  const TinderClone({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(375, 812),
      builder: (ctx, c) => MaterialApp.router(
        title: 'Tinder Clone',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.primary,
        ),
        routerConfig: AppRouter.goRouter,
      ),
    );
  }
}
