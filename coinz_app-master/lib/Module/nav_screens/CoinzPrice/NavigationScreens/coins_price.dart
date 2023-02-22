import 'package:coinz_app/provider/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../model/coninz_model.dart';
import '../../../../provider/coninz_provider.dart';
import 'couinz_list_screen.dart';

class CoinzPrice extends StatefulWidget {
  const CoinzPrice({super.key});
  static const roudName = "/CoinzPrice";

  @override
  State<CoinzPrice> createState() => _CoinzPriceState();
}

class _CoinzPriceState extends State<CoinzPrice> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = Provider.of<LocaleProvider>(context, listen: false);

      provider.clearLocale();
    });
  }

  bool firstTime = true;
  List<Couinz> couinz = [];
  @override
  void didChangeDependencies() {
    final data = Provider.of<CouinzProvider>(context, listen: false);
    if (firstTime) {
      couinz = data.getCouinz;
      var newCo = Couinz(
          name: "Add New",
          image: 'assets/bitcoin.svg',
          price: "0",
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 204, 199, 201),
              Color.fromARGB(255, 240, 240, 241),
            ],
          ));

      if (couinz.length != 4) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (data.getCouinz.contains(newCo)) {
            print("already exist");
          } else {
            data.setCouinz(newCo);
          }
        });
      }

      firstTime = false;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale ?? const Locale('ar');

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Consumer<CouinzProvider>(builder: (context, data, _) {
            return Column(
              // scrollDirection: Axis.vertical,
              // shrinkWrap: true,
              // shrinkWrap: false,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.w),
                  child: const Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      "اسعار العملات الالكترونية",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'swissra',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    children: [
                      const Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          "اخر تحديث :",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'swissra',
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      const Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          "09-19-2018",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'swissra',
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
                //                    couinzCard(),
// gradView for show couinzCard(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: couinz.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        if (couinz[index].name == "Add New") {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CouinzListScreen(
                                couinz: couinz[index],
                                eidt: false,
                              ),
                            ),
                          );
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CouinzListScreen(
                                couinz: couinz[index],
                                eidt: true,
                              ),
                            ),
                          );
                        }
                      },
                      child: couinzCard(
                        icon: couinz[index].image,
                        price: couinz[index].price,
                        title: couinz[index].name,
                        gradient: couinz[index].gradient,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  color: const Color.fromARGB(255, 241, 242, 242),
                  width: double.infinity,
                  height: 41.h,
                  padding: EdgeInsets.all(8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("data", style: TextStyle(color: Colors.grey[500])),
                      Text("data", style: TextStyle(color: Colors.grey[500])),
                      Text("data", style: TextStyle(color: Colors.grey[500])),
                    ],
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: couinzList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return couinzInfo(couinz: couinzList[index]);
                    }),
              ],
            );
          }),
        ),
      ),
    );
  }

  Padding couinzInfo({Couinz? couinz}) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                couinz?.image ?? 'assets/bitcoin.svg',
                width: 20.w,
                height: 20.h,
                // fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Text(couinz?.name ?? "data"),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Text("\$ ${couinz?.price}" ?? "data"),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Text(couinz?.change ?? "data"),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container couinzCard(
      {String? title, String? price, String? icon, Gradient? gradient}) {
    return Container(
      width: 155.w,
      height: 91.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.w),
          gradient: gradient ??
              const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFFB79B4),
                  Color(0xFF9B81EC),
                ],
              )),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.all(8.h),
          child: SvgPicture.asset(
            icon ?? 'assets/bitcoin.svg',
            width: 28.w,
            height: 30.h,
            // fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title ?? "داتا", style: const TextStyle(color: Colors.white)),
            SizedBox(
              width: 2.w,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(price ?? "20", style: const TextStyle(color: Colors.white)),
            SizedBox(
              width: 2.w,
            ),
            const Text(
              "\$",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ]),
    );
  }
}
