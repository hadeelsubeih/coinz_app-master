import 'package:coinz_app/Model/coninz_model.dart';
import 'package:coinz_app/Model/list_news.dart';
import 'package:coinz_app/Module/nav_screens/CoinzPrice/NewsAndReports/news_screen/news_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsListScreen extends StatelessWidget {
  const NewsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: false,

      // physics: NeverScrollableScrollPhysics(),
      itemCount: ListNews.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewsPage(
                          image: ListNews[index].image,
                          title: ListNews[index].title,
                          subtitle: ListNews[index].subtitle,
                        )));
          },
          child: Container(
              padding: EdgeInsets.all(8.w),
              margin: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.w),
              ),
              child: continerForListView(News: ListNews[index])),
        );
      },
    );
    // itemBuilder: (context, index) => GestureDetector(
    //       onTap: () {},
    //       child: Padding(
    //         padding: EdgeInsets.all(10.w),
    //         child: Container(
    //           decoration: BoxDecoration(
    //             border: Border.all(color: Colors.grey),
    //             borderRadius: BorderRadius.circular(8.w),
    //           ),
  }

  Row continerForListView({News? News}) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image(
          width: 123.w,
          height: 94.h,
          fit: BoxFit.fill,
          image: AssetImage(
            News?.image ?? 'assets/man1.png',
          ),
        ),
      ),
      Container(
        width: 200.w,
        child: Column(
          children: [
            Text(
              News?.title ??
                  "انتعاش في قيمة العملات الرقمية الرئيسية تمثلت بارتفاع كل من البيتكوين والاثيريوم وكاردانو",
              style: TextStyle(
                  fontSize: 11.sp,
                  fontFamily: "swissra",
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              News?.subtitle ?? '12/22/2018',
              style: TextStyle(
                  fontSize: 11.sp,
                  fontFamily: "swissra",
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      )
    ]);
    //           ]
    //               // visualDensity: VisualDensity(vertical: 5), // to expand

    //               ),
    //         ),
    //       ),
    //     ));;
  }
}
