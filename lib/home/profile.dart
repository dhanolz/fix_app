import 'dart:ui';

import 'package:fix_app/home/color/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class ProfileView_tab extends StatefulWidget {
  const ProfileView_tab({super.key});

  @override
  State<ProfileView_tab> createState() => _ProfileView_tabState();
}

class _ProfileView_tabState extends State<ProfileView_tab> {
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
          // page view
          SafeArea(
            child: Column(
              children: [
                // tidak bisa discroll
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 50, top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            child: Image.network(
                              "https://user-images.githubusercontent.com/87476402/204074043-7e6c9df6-f374-4652-8c17-aacb6656b488.png",
                              // fit: BoxFit.fill,
                              // height: 500,
                              // width: 400,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "UserName",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: appTextSoft,
                                ),
                              ),
                              SizedBox(
                                //width: 10,
                                height: 10,
                              ),
                              Text(
                                "Ramadhani",
                                style: GoogleFonts.oswald(
                                  fontSize: 25,
                                  color: appBlack,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          UniconsLine.edit,
                          size: 30,
                          color: appBlack,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Container(
                    height: 350,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: appBlueSoft,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://user-images.githubusercontent.com/87476402/204085525-94a10c06-c6ef-42fc-801c-2df3f5736c73.png",
                                      scale: 15,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: appWhite,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Account",
                                style: GoogleFonts.sourceSerifPro(
                                  fontSize: 25,
                                  color: appBlack,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://user-images.githubusercontent.com/87476402/204085693-93e13324-7aca-43e0-b71b-ca42d7a8e593.png",
                                      scale: 15,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: appWhite,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Setting",
                                style: GoogleFonts.sourceSerifPro(
                                  fontSize: 25,
                                  color: appBlack,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://user-images.githubusercontent.com/87476402/204085762-719632a6-2170-42ce-9e85-c90e48f10691.png",
                                      scale: 15,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: appWhite,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Export Data",
                                style: GoogleFonts.sourceSerifPro(
                                  fontSize: 25,
                                  color: appBlack,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://user-images.githubusercontent.com/87476402/204085800-9a47821b-73e8-44a4-9970-87214de78d04.png",
                                      scale: 15,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: appWhite,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Log-Out",
                                style: GoogleFonts.sourceSerifPro(
                                  fontSize: 25,
                                  color: appBlack,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // const Icon(Icons.account_balance),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
