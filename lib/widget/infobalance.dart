import 'package:fix_app/home/color/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:management_app/controller/home_controller.dart';

class InfoBalance extends StatelessWidget {
  const InfoBalance({Key? key, required this.isIncome, required this.balance})
      : super(key: key);

  final bool isIncome;
  final int balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.4,
      padding: EdgeInsets.all(15),
      //height: 70,
      decoration: BoxDecoration(
        color: isIncome == true ? appGreen : appRed,
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: appWhite,
              borderRadius: BorderRadius.circular(
                13,
              ),
            ),
            child: Image.network(isIncome == true
                ? "https://user-images.githubusercontent.com/87476402/204072656-c26045b9-1563-47f5-9ca3-3d83c21eca8c.png"
                : "https://user-images.githubusercontent.com/87476402/204072657-d56c80ab-941a-4f50-ad3f-03de94689ab3.png"),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  isIncome == true ? "Income" : "Outcome",
                  style: TextStyle(color: appWhite),
                ),
                const SizedBox(
                  height: 5,
                ),
                FittedBox(
                  child: Text(
                    "\$$balance",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: appWhite),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
