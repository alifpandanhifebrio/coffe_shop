import 'package:coffe_shop/pages/account.dart';
import 'package:coffe_shop/pages/drawer.dart';
import 'package:coffe_shop/pages/home.dart';
import 'package:coffe_shop/pages/order.dart';
import 'package:coffe_shop/pages/reward.dart';
import 'package:coffe_shop/pages/scan.dart';
import 'package:coffe_shop/uikit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UIColor.background,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Builder(
            builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: SvgPicture.asset(
                  'assets/icons/three_lines.svg',
                  width: 3,
                  height: 3,
                  fit: BoxFit.scaleDown,
                ),
              );
            },
          ),
        ),
        title: SvgPicture.asset(
          'assets/images/splash_screen_coffee.svg',
          width: 30,
          height: 50,
          fit: BoxFit.scaleDown,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              'assets/icons/bag.svg',
              width: 50,
              height: 50,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
      drawer: const DrawerBar(),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedLabelStyle:
              GoogleFonts.poppins(fontWeight: FontWeight.bold),
          selectedFontSize: 15,
          selectedItemColor: UIColor.background,
          currentIndex: myCurrentIndex,
          onTap: (index) {
            setState(() {
              myCurrentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/home.svg'), label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/scan.svg'),
                label: 'Scan / Pay'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/order.svg'),
                label: 'Order'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/account.svg'),
                label: 'Account'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/reward.svg'),
                label: 'Reward')
          ]),
      body: pages[myCurrentIndex],
    );
  }
}

List<Widget> pages = [
  const Home(),
  const Scan(),
  const Order(),
  const Account(),
  const Reward(),
];
