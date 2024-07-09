// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/util/my_buttons.dart';
import 'package:wallet_app/util/my_card.dart';
import 'package:wallet_app/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  //PageController
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        shape: CircleBorder(),
        child: Icon(
          Icons.monetization_on,
          size: 32,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              size: 28,
            ),
            Icon(
              Icons.settings,
              size: 28,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          //app bar
          children: [
            //start
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[500],
                    ),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),

            //End

            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 564.30,
                    cardNumbr: 123536564,
                    expiryMonth: 2,
                    expiryYear: 2024,
                    Color: Colors.purple[300],
                  ),
                  MyCard(
                    balance: 1564.30,
                    cardNumbr: 673536564,
                    expiryMonth: 5,
                    expiryYear: 2024,
                    Color: Colors.blue[300],
                  ),
                  MyCard(
                    balance: 64.30,
                    cardNumbr: 156736564,
                    expiryMonth: 5,
                    expiryYear: 2027,
                    Color: Colors.red[300],
                  ),
                  MyCard(
                    balance: 56.30,
                    cardNumbr: 433536564,
                    expiryMonth: 5,
                    expiryYear: 2024,
                    Color: Colors.orange[300],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 15,
            ),
            // Dots
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),
            //Dots End
            SizedBox(
              height: 30,
            ),
            //3 buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // send
                MyButton(
                  imagePath: 'lib/icons/transfer.png',
                  buttonText: 'Send',
                ),

                //Pay Buttons
                MyButton(
                  imagePath: 'lib/icons/atm-card.png',
                  buttonText: 'Pay',
                ),

                //Bills
                MyButton(
                  imagePath: 'lib/icons/bill.png',
                  buttonText: 'Bills',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            //column -> stats + transaction
            Column(
              children: [
                MyListTile(
                  imagePath: 'lib/icons/analysis.png',
                  title: 'Statistics',
                  subTitle: 'Paments and Income',
                ),
                MyListTile(
                  imagePath: 'lib/icons/lending.png',
                  title: 'Transaction',
                  subTitle: 'Transaction History',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
