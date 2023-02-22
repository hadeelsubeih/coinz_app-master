import 'dart:async';
import 'package:coinz_app/Module/nav_screens/bottom_navigation.dart';
import 'package:coinz_app/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:coinz_app/Module/nav_screens/CoinzPrice/NavigationScreens/coins_price.dart';
import 'package:coinz_app/provider/locale_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const roudName = "/SplashScreen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushNamedAndRemoveUntil(
            BottomNavigator.roudName, (route) => false));

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      final provider = Provider.of<LocaleProvider>(context, listen: false);

      provider.clearLocale();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale ?? Locale('ar');
    final flag = L10n.getFlag(locale.languageCode);

    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  ContainerSplash(),
                  ContainerSplash(
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFFFB79B4),
                        Color(0xFF9B81EC),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ContainerSplash(
                      gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF478EDA),
                      Color(0xFF58C4D8),
                    ],
                  )),
                  ContainerSplash(
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF47E546),
                        Color(0xFF02DFB6),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 190.h),
                  child: const Text(
                    "بلوك",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'swissra'),
                  ),
                ),
                const Text(
                  "تشين",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'swissra'),
                ),
                SizedBox(
                  height: 55.h,
                ),
                SvgPicture.asset(
                  "assets/logo.svg",
                  width: 150.w,
                  height: 135.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container ContainerSplash({Gradient? gradient}) {
    return Container(
      width: 187.5.w,
      height: 406.h,
      decoration: BoxDecoration(
          gradient: gradient ??
              const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFFFA500),
                  Color(0xFFFFDB00),
                ],
              )),
    );
  }
}
