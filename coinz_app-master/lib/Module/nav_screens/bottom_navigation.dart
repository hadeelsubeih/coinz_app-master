import 'package:coinz_app/Module/nav_screens/CoinzPrice/C/coin_alarm.dart';
import 'package:coinz_app/Module/nav_screens/CoinzPrice/NavigationScreens/coins_price.dart';
import 'package:coinz_app/Module/Splash/splash_screen.dart';
import 'package:coinz_app/Module/nav_screens/CoinzPrice/NewsAndReports/news_list_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  static const roudName = "BottomNavigatorScreen";
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _page = 0;

  List pages = const [
    CoinzPrice(),
    CoinAlarmSreen(),
    NewsListScreen(),
  ];

  void navegate(int index) {
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.black,
      //   items: const <Widget>[
      //     Icon(Icons.home, size: 30),
      //     Icon(Icons.chat, size: 30),
      //     Icon(Icons.person, size: 30),
      //   ],
      //   onTap: (index) {
      //     navegate(index);
      //   },
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'اسعار العملات',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'منبه العملات',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'اخبار وتقارير',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _page,
        selectedItemColor: Colors.black,
        onTap: (index) {
          navegate(index);
        },
      ),
      body: pages[_page],
    );
  }

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
}
