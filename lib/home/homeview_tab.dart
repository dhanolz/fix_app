import 'package:fix_app/home/color/color.dart';
import 'package:fix_app/home/home.dart';
import 'package:fix_app/home/profile.dart';
import 'package:fix_app/home/transaction.dart';
import 'package:fix_app/home/wallet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:unicons/unicons.dart';

class HomeViewTab extends StatefulWidget {
  const HomeViewTab({super.key});

  @override
  State<HomeViewTab> createState() => _HomeViewTabState();
}

class _HomeViewTabState extends State<HomeViewTab> {
  final route = [
    HomeView(),
    TransactionView(),
    WalletView_Tab(),
    ProfileView_tab(),
  ];
  int selectedIndex = 0;

  void onTabChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: appBlueSoft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GNav(
            backgroundColor: appBlueSoft,
            tabBackgroundColor: appPrimary,
            activeColor: Colors.white,
            gap: 8,
            padding: EdgeInsets.all(8),
            tabs: [
              GButton(
                icon: UniconsLine.estate,
                text: 'Home',
              ),
              GButton(
                icon: UniconsLine.chart_line,
                text: 'Transaction',
              ),
              GButton(
                icon: UniconsLine.transaction,
                text: 'Wallet',
              ),
              GButton(
                icon: UniconsLine.users_alt,
                text: 'Profile',
              ),
            ],
            selectedIndex: selectedIndex,
            onTabChange: onTabChange,
          ),
        ),
      ),
      body: route.elementAt(selectedIndex),
    );
  }
}
