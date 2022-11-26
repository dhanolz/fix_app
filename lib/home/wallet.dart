// ignore_for_file: prefer_const_constructors
// ignore_for_file: camel_case_types

import 'package:fix_app/home/color/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class WalletView_Tab extends StatefulWidget {
  const WalletView_Tab({super.key});

  @override
  State<WalletView_Tab> createState() => _WalletView_TabState();
}

class _WalletView_TabState extends State<WalletView_Tab> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          SafeArea(
            child: Column(
              children: [
                // tidak bisa discroll
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_circle_left,
                            color: appPrimary,
                          ),
                        ],
                      ),
                      const Text(
                        "November",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_circle_right,
                          color: appPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                    height: 600,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                      color: appBlueSoft,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 200,
                                width: size.width * 0.90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: appWhite,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 35,
                                            width: 130,
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 235, 230, 230),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        Colors.amber.shade700,
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  'Shopping',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            'Remaining \$0',
                                            style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Container(
                                            height: 15,
                                            width: 300,
                                            decoration: BoxDecoration(
                                                color: Colors.amber.shade600,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            '\$1200 of \$10.000',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: appTextSoft,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            'You have exceed the limit',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: appRed,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        UniconsLine.exclamation_octagon,
                                        color: Colors.red,
                                        size: 30,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 160,
                                width: size.width * 0.90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: appWhite,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 35,
                                            width: 130,
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 235, 230, 230),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue.shade700,
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  'Transportasi',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            'Remaining \$350',
                                            style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Container(
                                            height: 15,
                                            width: 300,
                                            decoration: BoxDecoration(
                                              color: appBlueSoft,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 130),
                                              child: Container(
                                                height: 15,
                                                decoration: BoxDecoration(
                                                  color: appBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            '\$350 of \$700',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: appTextSoft,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Container(
                                height: 70,
                                width: size.width * 0.90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: appGreen,
                                ),
                                child: Center(
                                  child: Text(
                                    'Create a budget',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: appWhite,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
