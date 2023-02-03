import 'package:ewallet/color.dart';
import 'package:flutter/material.dart';

class AbsensiCard extends StatelessWidget {
  const AbsensiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 145,
      margin: EdgeInsets.only(left: 18, right: 18, top: 20, bottom: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 20)
          ]),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.date_range_outlined,
                  color: warna,
                  size: 14.0,
                ),
                Text(
                  ' Senin, 20 Okt 2022',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 16, right: 10, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SMP Putri Al Azhar',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    'Lab 1A',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, right: 10, left: 5, bottom: 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2), color: Colors.grey.withOpacity(0.5))
              ], color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'IPA Terpadu',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    '07.00 - 10.30',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.fingerprint,
                        color: warna,
                        size: 30.0,
                      ),
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.displaySmall,
                              children: [
                            TextSpan(
                                text: '07.00',
                                style: TextStyle(
                                    color: warna,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: ' - Clock in',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold))
                          ])),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'History Absensi',
                        style: TextStyle(color: warna, fontSize: 12),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
