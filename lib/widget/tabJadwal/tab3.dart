import 'package:ewallet/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../models/list_tab.dart';
import '../jadwal_list.dart';

class Tab3 extends StatefulWidget {
  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  final List<ListTab> _userList = [
    ListTab(
        title: 'IPA Terpadu',
        kelas: 'VII A /smp putri islam Al-Azhar',
        jam: '14.00-14.33'),
    ListTab(
        title: 'IPA Terpadu',
        kelas: 'VII A /smp putri islam Al-Azhar',
        jam: '14.00-14.35'),
    ListTab(
        title: 'IPA Terpadu',
        kelas: 'VII A /smp putri islam Al-Azhar',
        jam: '14.00-14.40'),
    ListTab(
        title: 'IPA Terpadu',
        kelas: 'VII A /smp putri islam Al-Azhar',
        jam: '14.00-14.30'),
    ListTab(
        title: 'IPA Terpadu',
        kelas: 'VII A /smp putri islam Al-Azhar',
        jam: '14.00-14.30'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 36,
            padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
            margin: EdgeInsets.only(top: 15, bottom: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: warna),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Senin',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Text(
                      'Semua Tanggal',
                      style: TextStyle(fontSize: 11, color: warna),
                    ),
                    icon: Icon(
                      CupertinoIcons.chevron_down,
                      color: warna,
                      size: 12,
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(125, 30), primary: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 215,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  JadwalList(_userList),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
