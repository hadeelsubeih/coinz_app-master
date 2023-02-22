import 'package:flutter/material.dart';

class News {
  final String? image;
  final String? title;
  final String? subtitle;

  News({this.image, this.title, this.subtitle});
}

List<News> ListNews = [
  News(
      image: "assets/man1.png",
      title:
          "انتعاش في قيمة العملات الرقمية الرئيسية تمثلت بارتفاع كل من البيتكوين والاثيريوم ",
      subtitle: "12/22/2018"),
  News(
      image: "assets/man2.png",
      title:
          "الآن هو الوقت الأفضل للاستثمار في البيتكوين، بالرغم من عمليات التصحيح الأخيرة",
      subtitle: "07/05/2018"),
  News(
      image: "assets/man3.png",
      title: "منصة Coinbase تجني 2.7 مليون دولار يوميًا",
      subtitle: "08/07/2018"),
  News(
      image: "assets/man4.png",
      title: "معالج المدفوعات “Stripe” يتوقف عن قبول مدفوعات عملة البيتكوين",
      subtitle: "08/26/2018"),
  News(
      image: "assets/man5.png",
      title: "كيف ستكون العملة الرقمية الخاصة بالفيسبوك؟",
      subtitle: "11/25/2018"),
  News(
      image: "assets/man1.png",
      title:
          "انتعاش في قيمة العملات الرقمية الرئيسية تمثلت بارتفاع كل من البيتكوين والاثيريوم وكاردانو",
      subtitle: "12/22/2018"),
];
