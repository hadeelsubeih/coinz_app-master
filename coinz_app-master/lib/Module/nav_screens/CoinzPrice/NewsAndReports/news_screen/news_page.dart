import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsPage extends StatelessWidget {
  static const roudName = "/NewsPage";
  String? image;
  String? title;
  String? subtitle;
  NewsPage({super.key, this.image, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Text(
            "data",
            style: TextStyle(color: Colors.black),
          ),
        ],
        leading: const Text(
          "data",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(7.w),
              child: Column(children: [
                Text(
                  title ?? "data",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "swissra",
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                ),
                Text(subtitle ?? "data"),
              ]),
            ),
            Image.asset(
              "assets/Bitmap.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Text(
                      "مشاركة عبر فيسبوك",
                      style: TextStyle(color: Colors.white, fontSize: 10.sp),
                    ),
                  ),
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.blueAccent)),
                ),
                SizedBox(
                  width: 5.w,
                ),
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    child: Text(
                      "مشاركة عبر تويتر",
                      style: TextStyle(color: Colors.white, fontSize: 10.sp),
                    ),
                  ),
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.lightBlue)),
                ),
                SizedBox(
                  width: 5.w,
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.w),
                        color: Colors.grey[300],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share),
                      )),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(children: [
                Text(
                  'باستثناء عملة الريبل والتي أظهرت أداءاً ضعيفاً طوال الأسابيع القليلة الماضية، فإن العملات الرقمية الرئيسية في السوق بما في ذلك البيتكوين والاثيريوم وكاردانو قد ارتفعت قيمتها. وفي غضون الـ 24 ساعة الماضية، ازداد سعر البيتكوين بنسبة 8% وارتفعت قيمة الإيثر بنسبة 10%، كما وارتفعت قيمة كاردانو بنسبة 15%. وبينما انخفض سعر العملات الثلاث بهامش ضئيل في الثلاث ساعات الماضية، إلا أنهم لا زالوا يسجلون مكاسب يومية كبيرة نسبياً',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.sp,
                      fontFamily: 'swissra'),
                ),
                Text(
                  'شعبية البيتكوين',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.sp,
                      fontFamily: 'swissra',
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Text(
                    ' خلال عملية التصحيحٍ الكبيرة التي حدثت في أوائل كانون الثاني/يناير، هبطت أسعار معظم العملات الرقمية بنسبة أكثر من 50% من أعلى قيمة لها، إلا أنه من ناحية أخرى ازدادت شعبية البيتكوين أكثر. حيث أقبل المستثمرون على العملات الرقمية ذات التقلبات الأقل في الأسعار. وفي ذلك الوقت، ارتفع مؤشر هيمنة البيتكوين إلى 38%، إذ تعافت العملة من أدنى مستوياتها بعد انخفاض بنسبة  32%. وخلال الأسبوع الماضي، انخفض مؤشر هيمنة البيتكوين من 38% إلى 34%، مع انخفاض حجم معاملات البيتكوين اليومية إلى أكثر من النصف، أي من 490.000 إلى 242.000 دولار.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 11.sp,
                        fontFamily: 'swissra',
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
