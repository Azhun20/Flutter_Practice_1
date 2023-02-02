import 'package:ewallet/models/list_tab.dart';
import 'package:flutter/material.dart';

class JadwalList extends StatefulWidget {
  final List<ListTab> listusers;
  JadwalList(this.listusers);

  @override
  State<JadwalList> createState() => _JadwalListState();
}

class _JadwalListState extends State<JadwalList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 215,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(right: 10, left: 5, bottom: 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2), color: Colors.grey.withOpacity(0.5))
              ], color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.listusers[index].title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                              text: TextSpan(
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                  children: [
                                TextSpan(
                                    text: 'Kelas: ',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey)),
                                TextSpan(
                                    text: widget.listusers[index].kelas,
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey))
                              ]))
                        ],
                      ),
                      Text(
                        widget.listusers[index].jam,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: widget.listusers.length,
        ));
  }
}
