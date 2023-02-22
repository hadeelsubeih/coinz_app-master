import 'package:coinz_app/Localization/app_localization.dart';
import 'package:coinz_app/Module/nav_screens/CoinzPrice/NavigationScreens/coins_price.dart';
import 'package:coinz_app/Module/nav_screens/CoinzPrice/NewsAndReports/news_screen/news_page.dart';
import 'package:coinz_app/Module/nav_screens/bottom_navigation.dart';
import 'package:coinz_app/provider/coninz_provider.dart';
import 'package:coinz_app/provider/locale_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:coinz_app/Module/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    // var provider = Provider.of<LocaleProvider>(context);

    return MultiProvider(
        providers: [
          ListenableProvider<LocaleProvider>(create: (_) => LocaleProvider()),
          ListenableProvider<CouinzProvider>(create: (_) => CouinzProvider()),
        ],
        child: ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return MaterialApp(
                navigatorKey: navigatorKey,
                debugShowCheckedModeBanner: false,
                theme: ThemeData(),
                // locale: provider.locale,
                // locale: Locale('ar'),
                supportedLocales: AppLocalization.all,
                localizationsDelegates: AppLocalization.localizationsDelegates,

                home: const SplashScreen(),
                routes: {
                  SplashScreen.roudName: (cox) => const SplashScreen(),
                  CoinzPrice.roudName: (cox) => const CoinzPrice(),
                  BottomNavigator.roudName: (cox) => const BottomNavigator(),
                  NewsPage.roudName: (cox) => NewsPage(),
                },
              );
            }

            // child: const HomePage(title: 'First Method'),
            ));
  }
}
