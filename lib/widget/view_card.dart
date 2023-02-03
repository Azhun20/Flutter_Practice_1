import 'package:ewallet/color.dart';
import 'package:flutter/material.dart';

class ViewCard extends StatelessWidget {
  final int jumlah;
  final String title;
  final IconData icn;
  ViewCard({required this.jumlah, required this.title, required this.icn});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          height: 81,
          padding: EdgeInsets.only(top: 20),
          margin: EdgeInsets.only(top: 15, left: 10, right: 10),
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8)),
              color: Colors.greenAccent),
          child: Column(
            children: [
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: jumlah.toString(),
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: '\nhari',
                        style: TextStyle(fontSize: 10, color: Colors.black54))
                  ])),
              Container(
                height: 23,
                padding: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
                margin: EdgeInsets.only(top: 10),
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    color: warna),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )),
      Positioned(
        top: 0,
        right: 0,
        left: 0,
        child: CircleAvatar(
          radius: 16,
          backgroundColor: warna,
          child: CircleAvatar(
            radius: 14,
            foregroundColor: warna,
            backgroundColor: Colors.white,
            child: Icon(
              icn,
              size: 16,
            ),
          ),
        ),
      ),
    ]);
  }
}
