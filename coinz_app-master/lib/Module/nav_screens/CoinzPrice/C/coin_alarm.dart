import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/locale.dart';

class CoinAlarmSreen extends StatefulWidget {
  const CoinAlarmSreen({super.key});

  @override
  State<CoinAlarmSreen> createState() => _CoinAlarmSreenState();
}

String selectedValue = 'كاردانو Cardano';
String selectedValue1 = 'كاردانو Cardano';
String selectedValue2 = 'أكثر من';
String selectedValue3 = 'أكثر من';
int listItemCount = 2;

class _CoinAlarmSreenState extends State<CoinAlarmSreen> {
  void updateScreen() {
    setState(() {
      bool _isUpdated = false;
      // if (_isUpdated) {
      //   selectedValue1 = selectedValue;
      //   selectedValue = selectedValue;
      // }
      // bool _isClicked = false;
      // if (_isClicked) {
      listItemCount = listItemCount + 1;
      //   ;
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    final items = [
      'بيتكوين bitcoin',
      'ايثيريوم Ethereum',
      'ريبـل Ripple',
      'كاردانو Cardano',
      'لايت كوين Litecoin',
      'نيو NEO',
      'نيم NEM',
      'ايوتــا IOTA',
    ];
    final valueItems = [
      'أكثر من',
      ' اقل من',
      'يساوي',
    ];
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(8.w),
      child: Scaffold(
          body: ListView(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.w),
          child: const Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              "  منبه العملات",
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
            children: const [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "يرجى اختيار نوع العملة  :",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'swissra',
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
        Container(
            width: double.infinity,
            height: 56.h,
            margin: EdgeInsets.all(15.w),
            padding: EdgeInsets.all(3.w),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.w),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Row(
                  //   children: [
                  SvgPicture.asset(
                    "assets/bitcoin.svg",
                    width: 23.w,
                    height: 23.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  //     Text(
                  //       selectedValue,
                  //       style: TextStyle(
                  //           fontSize: 12.sp,
                  //           fontWeight: FontWeight.bold,
                  //           // color: Colors.white,
                  //           fontFamily: 'swissra'),
                  //     ),
                  //   ],
                  // ),

                  DropdownButton<String>(
                    value: selectedValue,
                    onChanged: (String? newValue) => setState(
                      () => selectedValue = newValue ?? selectedValue1,
                    ),
                    items: items
                        .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                ))
                        .toList(),

                    // add extra sugar..

                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 42,
                    underline: SizedBox(),
                  ),

                  // InkWell(
                  //     child: SvgPicture.asset(
                  //       "assets/drop_icon.svg",
                  //       width: 15.w,
                  //       color: Colors.grey,
                  //     ),
                  //     onTap: () {
                  //       // showDialog(
                  //       //     context: context,
                  //       //     builder: (BuildContext context) {
                  //       //       return AlertDialog(
                  //       //         title: Text("اختر العملة"),
                  //       //         content: DropdownButton<String>(
                  //       //           value: selectedValue,
                  //       //           onChanged: (String? newValue) => setState(
                  //       //             () => selectedValue =
                  //       //                 newValue ?? selectedValue1,
                  //       //           ),
                  //       //           items: items
                  //       //               .map<DropdownMenuItem<String>>(
                  //       //                   (String value) =>
                  //       //                       DropdownMenuItem<String>(
                  //       //                         value: value,
                  //       //                         child: Text(value),
                  //       //                       ))
                  //       //               .toList(),

                  //       //           // add extra sugar..
                  //       //           icon: Icon(Icons.arrow_drop_down),
                  //       //           iconSize: 42,
                  //       //           underline: SizedBox(),
                  //       //         ),
                  //       //         actions: [
                  //       //           Container(
                  //       //             width: double.infinity,

                  //       //             // padding: EdgeInsets.all(20),
                  //       //             child: ElevatedButton(
                  //       //                 style: ButtonStyle(
                  //       //                   backgroundColor:
                  //       //                       MaterialStatePropertyAll<Color>(
                  //       //                     Colors.orange,
                  //       //                   ),
                  //       //                 ),
                  //       //                 onPressed: () {
                  //       //                   selectedValue1 = selectedValue;
                  //       //                   Navigator.of(context,
                  //       //                           rootNavigator: true)
                  //       //                       .pop('dialog');
                  //       //                 },
                  //       //                 child: Text("ok")),
                  //       //           ),
                  //       //         ],
                  //       //       );
                  //       //     });

                  //     })
                ],
              ),
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Row(
            children: const [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "يرجى تحديد قيمة المنبه  :",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'swissra',
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
        Container(
            width: double.infinity,
            height: 56.h,
            margin: EdgeInsets.all(15.w),
            // padding: EdgeInsets.all(3.w),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.w),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(
                  value: selectedValue2,
                  onChanged: (String? newValue) => setState(
                    () => selectedValue2 = newValue ?? selectedValue3,
                  ),
                  items: valueItems
                      .map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ))
                      .toList(),

                  // add extra sugar..
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 42,
                  underline: SizedBox(),
                ),

                // Text(
                //   "اكثر من ",
                //   style: TextStyle(
                //       fontSize: 12.sp,
                //       fontWeight: FontWeight.bold,
                //       // color: Colors.white,
                //       fontFamily: 'swissra'),
                // ),
                Container(
                  width: 1.w,
                  color: Colors.grey,
                ),
                Text(
                  "10,000 \$",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      // color: Colors.white,
                      fontFamily: 'swissra'),
                ),
              ],
            )),
        Padding(
          padding: EdgeInsets.all(8.w),
          child: Container(
              height: 55.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.w),
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFFFA500),
                      Color(0xFFFFDB00),
                    ],
                  )),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    // _isClicked = true;
                  });
                },
                child: Text(
                  "اضف تنبيه",
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'swissra'),
                ),
              )),
        ),
        Container(
          height: 2.h,
          width: double.infinity,
          color: Colors.grey[200],
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: listItemCount,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.w),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/bitcoin.svg",
                              width: 29.w,
                              height: 29.h,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text("لايت كوين lite coin"),
                                Row(
                                  children: [
                                    const Text(
                                      "يساوي",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    const Text(
                                      "10,000.0",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    const Text(
                                      "\$",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.delete,
                          color: Colors.green,
                        )
                      ],
                    )),
              );
            }),
      ])),
    ));
  }
}
