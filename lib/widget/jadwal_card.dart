import 'package:ewallet/color.dart';
import 'package:flutter/material.dart';
import '../widget/tabJadwal/tab3.dart';

class JadwalCard extends StatefulWidget {
  const JadwalCard({super.key});

  @override
  State<JadwalCard> createState() => _JadwalCardState();
}

class _JadwalCardState extends State<JadwalCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTabController(
          length: 3,
          child: Container(
            height: 385,
            padding: const EdgeInsets.only(top: 15, bottom: 5),
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Jadwal mengajar saya',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.white,
                titleSpacing: 2,
                toolbarHeight: 22,
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TabBar(
                        labelColor: warna,
                        unselectedLabelColor: Colors.black,
                        indicatorColor: warna,
                        labelStyle: TextStyle(fontSize: 11),
                        labelPadding: EdgeInsets.only(top: 0, bottom: 0),
                        indicatorWeight: 3,
                        tabs: [
                          Tab(
                            text: 'SD Putri Islam',
                          ),
                          Tab(
                            text: 'SMP Putri Islam',
                          ),
                          Tab(
                            text: 'SMA Putri Islam',
                          )
                        ]),
                  ),
                ),
              ),
              body: TabBarView(children: [
                Tab3(),
                Tab3(),
                Tab3(),
              ]),
            ),
          ),
        )
      ],
    );
  }
}
