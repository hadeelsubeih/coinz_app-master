import 'package:flutter/material.dart';

import '../model/coninz_model.dart';

class CouinzProvider extends ChangeNotifier {
  List<Couinz> couinz = [];

  // get and set Couinz
  List<Couinz> get getCouinz => couinz;

  setCouinz(Couinz cou) {
    couinz.add(cou);
    //couinz = couinz.toSet().toList();
    notifyListeners();
  }

  eidtCouinz(Couinz coun, Couinz newCoun) {
    var index = couinz.indexOf(coun);
    couinz[index] = newCoun;

    notifyListeners();
  }
}
