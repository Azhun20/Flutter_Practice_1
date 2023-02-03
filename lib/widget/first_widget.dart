import 'package:ewallet/color.dart';
import 'package:flutter/material.dart';

class First_Widget extends StatelessWidget {
  const First_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage('Asset/img/icnPP.jpg'),
              ),
            ),
          ),
          Container(
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Robert Pattinson',
                    style: TextStyle(fontSize: 14, color: Colors.white)),
                Text('9522382',
                    style: TextStyle(fontSize: 10, color: Colors.white)),
                Text('Pondok Surriyah Alfiah',
                    style: TextStyle(fontSize: 10, color: Colors.white))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(
              right: 20,
              left: 50,
              top: 20,
              bottom: 20,
            ),
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Column(
              children: const [
                Icon(
                  Icons.wallet,
                  color: warna,
                  size: 20,
                ),
                Text(
                  'E-Wallet',
                  style: TextStyle(fontSize: 8, color: warna),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
