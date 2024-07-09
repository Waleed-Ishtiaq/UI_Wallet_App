// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumbr;
  final int expiryMonth;
  final int expiryYear;
  final Color;

  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumbr,
    required this.expiryMonth,
    required this.expiryYear,
    required this.Color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color,
        ),
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Container(
                  height: 70,
                  child: Center(
                    child: Image.asset('lib/icons/visa.png'),
                  ),
                ),
              ],
            ),
            Text(
              '\$' + balance.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //card No
              children: [
                Text(
                  cardNumbr.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                //Expiray date
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
