import 'package:ewallet/color.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavItem(
            icn: Icons.home_filled,
            title: 'Home',
            isActive: true,
            press: () {},
          ),
          BottomNavItem(
            icn: Icons.bar_chart_sharp,
            title: 'Nilai',
            press: () {},
          ),
          BottomNavItem(
            icn: Icons.notification_add_outlined,
            title: 'Notifikasi',
            press: () {},
          ),
          BottomNavItem(
            icn: Icons.file_present_outlined,
            title: 'Laporan',
            press: () {},
          ),
          BottomNavItem(
            icn: Icons.person_pin,
            title: 'Profile',
            press: () {},
          )
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icn;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key? key,
    required this.icn,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icn,
            color: isActive ? warna : Colors.grey,
            size: 20,
          ),
          Text(
            title,
            style:
                TextStyle(color: isActive ? warna : Colors.grey, fontSize: 10),
          )
        ],
      ),
    );
  }
}
