import 'dart:ui';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fix_app/controller/home_controller.dart';
import 'package:fix_app/controller/transaction_controller.dart';
import 'package:fix_app/data.dart';
import 'package:fix_app/home/color/color.dart';
import 'package:fix_app/widget/infobalance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:management_app/constant/color.dart';
// import 'package:management_app/controller/home_controller.dart';
// import 'package:management_app/widget/InfoBalance.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:unicons/unicons.dart';
//import 'package:flutter/h';

class TransactionView extends GetView<TransactionController> {
  final List<SalesData> chartData = [
    SalesData(DateTime(2010), 10),
    SalesData(DateTime(2011), 50),
    SalesData(DateTime(2012), 40),
    SalesData(DateTime(2013), 60),
    SalesData(DateTime(2014), 100),
    SalesData(DateTime(2015), 35),
    SalesData(DateTime(2016), 150)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [appYellowSoft, appPrimary.withOpacity(0.2)])),
          ),
          // page view
          SafeArea(
            child: Column(
              children: [
                // tidak bisa discroll
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        child: Row(
                          children: [
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: appPrimary,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Month",
                              style: GoogleFonts.poppins(fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          UniconsLine.clipboard_notes,
                          color: appPrimary,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // bisa discroll
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Grafic Transaction",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          width: chartData.length * 100,
                          height: 200,
                          child: SfCartesianChart(
                            primaryXAxis: DateTimeAxis(),
                            series: <ChartSeries>[
                              // Renders line chart
                              SplineSeries<SalesData, DateTime>(
                                color: appPrimary,
                                width: 4,
                                dataSource: chartData,
                                xValueMapper: (SalesData sales, _) =>
                                    sales.year,
                                yValueMapper: (SalesData sales, _) =>
                                    sales.sales,
                              ),
                              SplineSeries<SalesData, DateTime>(
                                color: appRed,
                                width: 2,
                                dataSource: chartData,
                                xValueMapper: (SalesData sales, _) =>
                                    sales.year,
                                yValueMapper: (SalesData sales, _) => 300,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Recent Transaction",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                // color: appVioletSoft,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: appVioletSoft,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text(
                                "See All",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: appPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "Today",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            // color: appVioletSoft,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // ListView.builder(
                      //   itemBuilder: (context, index) => SizedBox(
                      //     height: 15,
                      //   ),

                      // ),

                      ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 15,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: recentData.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 40),
                            title: Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  margin: EdgeInsets.only(right: 15),
                                  //color: appYellowSoft,
                                  decoration: BoxDecoration(
                                    color: appYellowSoft,
                                    borderRadius: BorderRadius.circular(15),
                                    // color: appYellowSoft,
                                  ),
                                  child: Image.network(
                                      "${recentData.elementAt(index)['images']}"),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${recentData.elementAt(index)['text']}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${recentData.elementAt(index)['harga']}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: appRed),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${recentData.elementAt(index)['subjudul']}",
                                            style:
                                                TextStyle(color: appTextSoft),
                                          ),
                                          Text(
                                            "${recentData.elementAt(index)['time']}",
                                            style:
                                                TextStyle(color: appTextSoft),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "Yesterday",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            // color: appVioletSoft,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 15,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: yesterdayData.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 40),
                            title: Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  margin: EdgeInsets.only(right: 15),
                                  //color: appYellowSoft,
                                  decoration: BoxDecoration(
                                    color: appYellowSoft,
                                    borderRadius: BorderRadius.circular(15),
                                    // color: appYellowSoft,
                                  ),
                                  child: Image.network(
                                      "${yesterdayData.elementAt(index)['images']}"),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${yesterdayData.elementAt(index)['text']}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${yesterdayData.elementAt(index)['harga']}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: appRed),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${yesterdayData.elementAt(index)['subjudul']}",
                                            style:
                                                TextStyle(color: appTextSoft),
                                          ),
                                          Text(
                                            "${yesterdayData.elementAt(index)['time']}",
                                            style:
                                                TextStyle(color: appTextSoft),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: ConvexAppBar(
      //   backgroundColor: appWhite,
      //   color: appPrimary,
      //   activeColor: appPrimary,
      //   items: [
      //     TabItem(icon: Icons.home, title: 'Home'),
      //     TabItem(icon: Icons.monetization_on_sharp, title: 'Transaction'),
      //     TabItem(icon: Icons.add, title: 'Add'),
      //     TabItem(icon: Icons.wallet, title: 'Wallet'),
      //     TabItem(icon: Icons.people, title: 'Profile'),
      //   ],
      //   initialActiveIndex: 0,
      //   onTap: (int i) => print('click index=$i'),
      // ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
