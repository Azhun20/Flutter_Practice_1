import 'package:flutter/material.dart';

class First_Widget extends StatelessWidget {
  const First_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
          RichText(
            text: TextSpan(
                style: Theme.of(context).textTheme.displaySmall,
                children: const [
                  TextSpan(
                      text: 'Robert Pattinson\n',
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                  TextSpan(
                      text: '9522382\n',
                      style: TextStyle(fontSize: 10, color: Colors.white)),
                  TextSpan(
                      text: 'Pondok Surriyah Alfiah',
                      style: TextStyle(fontSize: 10, color: Colors.white)),
                ]),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(right: 20, left: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Column(
              children: const [
                Icon(
                  Icons.wallet,
                  color: Colors.green,
                ),
                Text(
                  'E-Wallet',
                  style: TextStyle(fontSize: 10, color: Colors.green),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
