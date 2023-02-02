import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widget/tabJadwal/tab3.dart';

class JadwalCard extends StatefulWidget {
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
            height: 370,
            padding: EdgeInsets.only(top: 20),
            width: double.infinity,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  'Jadwal mengajar saya',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.white,
                titleSpacing: 2,
                toolbarHeight: 20,
                elevation: 2,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: TabBar(
                        labelColor: Colors.greenAccent,
                        unselectedLabelColor: Colors.black,
                        indicatorColor: Colors.greenAccent,
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
