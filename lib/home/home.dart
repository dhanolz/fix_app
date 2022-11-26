import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fix_app/controller/home_controller.dart';
import 'package:fix_app/data.dart';
import 'package:fix_app/home/color/color.dart';
import 'package:fix_app/widget/infobalance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:management_app/constant/color.dart';
// import 'package:management_app/controller/home_controller.dart';
// import 'package:management_app/widget/InfoBalance.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
//import 'package:flutter/h';

class HomeView extends GetView<HomeController> {
  final List<SalesData> chartData = [
    SalesData(DateTime(2010), 15),
    SalesData(DateTime(2011), 38),
    SalesData(DateTime(2012), 24),
    SalesData(DateTime(2013), 50),
    SalesData(DateTime(2014), 98),
    SalesData(DateTime(2015), 30),
    SalesData(DateTime(2016), 44)
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
                      CircleAvatar(
                        child: Image.network(
                            "https://user-images.githubusercontent.com/87476402/204074043-7e6c9df6-f374-4652-8c17-aacb6656b488.png"),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: appPrimary,
                          ),
                          Text("November"),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_active,
                          color: appPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Account Balance"),
                const Text(
                  "\$5.000.00",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoBalance(
                      isIncome: true,
                      balance: 7000,
                    ),
                    InfoBalance(isIncome: false, balance: 3000),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // bisa discroll
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Spend Frequency",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: appYellowSoft,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            //   child: Text(
                            //     "Today",
                            //     style: TextStyle(
                            //       fontWeight: FontWeight.bold,
                            //       color: appYellow,
                            //     ),
                            //   ),
                            // ),
                            // Text(
                            //   "Week",
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     color: appTextSoft,
                            //   ),
                            // ),
                            // Text(
                            //   "Month",
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     color: appTextSoft,
                            //   ),
                            // ),
                            // Text(
                            //   "Year",
                            //   style: TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     color: appTextSoft,
                            //   ),
                            // ),
                          ),
                        ],
                      ),
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
                    ],
                  ),
                )
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
