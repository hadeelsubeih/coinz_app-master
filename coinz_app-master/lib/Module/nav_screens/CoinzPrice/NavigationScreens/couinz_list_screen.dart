import 'package:coinz_app/model/coninz_model.dart';
import 'package:coinz_app/provider/coninz_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CouinzListScreen extends StatelessWidget {
  Couinz? couinz;
  bool? eidt = false;
  CouinzListScreen({Key? key, required this.couinz, this.eidt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
          SizedBox(
            height: 1.h,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: couinzList.length,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  var couinzProv =
                      Provider.of<CouinzProvider>(context, listen: false);

                  if (eidt == true) {
                    print("index $index");
                    print("index ${couinzList.length}");

                    if (couinzProv.getCouinz.contains(couinzList[index])) {
                      print("already exist");

                      // SHOW SNACK BAR TO USER
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Already Exist"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    } else {
                      couinzProv.eidtCouinz(couinz!, couinzList[index]);
                      Navigator.of(context).pop();
                    }
                  } else {
                    if (couinzProv.getCouinz.length == 4) {
                      couinzProv.getCouinz
                          .removeWhere((element) => element.name == "Add New");
                    }

                    // check if couinzProv.getCouinz dose not contain couinzList[index]
                    if (couinzProv.getCouinz.contains(couinzList[index])) {
                      print("already exist");

                      // SHOW SNACK BAR TO USER
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Already Exist"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    } else {
                      couinzProv.setCouinz(couinzList[index]);
                      Navigator.of(context).pop();
                    }
                  }
                },
                child: couinzInfo(couinz: couinzList[index])),
          ),
        ],
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
}
