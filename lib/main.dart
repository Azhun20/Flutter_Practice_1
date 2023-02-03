import 'dart:ui';
import 'package:ewallet/color.dart';
import 'package:flutter/cupertino.dart';

import './widget/view_card.dart';
import './widget/navbar.dart';
import 'widget/first_widget.dart';
import './widget/absensi_card.dart';
import 'widget/jadwal_card.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Wallet',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          height: size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  height: 312,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("Asset/img/bg.png"),
                        fit: BoxFit.fitWidth,
                        scale: 20,
                        alignment: Alignment.topCenter),
                  ),
                  child: Column(
                    children: [First_Widget(), AbsensiCard()],
                  ),
                ),
                JadwalCard(),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rekap Keseluruhan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Rekap kehadiran kamu pada bulan',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Juni',
                              style: TextStyle(
                                fontSize: 11,
                                decoration: TextDecoration.underline,
                                decorationColor: warna,
                                decorationThickness: 4,
                              ),
                            ),
                            style: TextButton.styleFrom(
                                primary: warna, padding: EdgeInsets.all(0)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ViewCard(
                              jumlah: 350,
                              title: 'Masuk',
                              icn: CupertinoIcons.checkmark_square),
                          ViewCard(
                              jumlah: 350,
                              title: 'Alpa',
                              icn: CupertinoIcons.xmark_square),
                          ViewCard(
                              jumlah: 350,
                              title: 'Terlambat',
                              icn: CupertinoIcons.exclamationmark_square)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Navbar());
  }
}
