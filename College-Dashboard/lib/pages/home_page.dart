import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardTextStyle = TextStyle(color: Color.fromRGBO(63, 63, 63, 1), fontSize: 14);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.3, // 30% height of whole screen
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/top_header.png'),
                alignment: Alignment.topCenter,
              ), // DecorationImage
            ), // BoxDecoration
          ), // Container

          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage('http://thenewcode.com/assets/images/thumbnails/sarah-parmenter.jpeg'),
                        ), // CircularAvatar
                        SizedBox(width: 16.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Katie Snowsky',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ), // Text
                            Text(
                              '234543',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ), // Text
                          ],
                        ), // Column
                      ],
                    ), // Row
                  ), // Container

                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      children: [
                        Card(
                          elevation: 3,
                          child: Container(
                            child: Image.asset(
                              'assets/images/profile1.svg',
                            ),
                          ),
                          // Column(
                          //   children: [
                          //     // SvgPicture.network(
                          //     //   'https://image.flaticon.com/icons/svg/1904/1904425.svg',
                          //     //   height: 100,
                          //     // ),
                          //     Image.asset(
                          //       'assets/images/profile1.svg',
                          //       height: 100,
                          //     ),
                          //     Text('Personal Data', style: cardTextStyle),
                          //   ],
                          // ), // Column
                        ), // Card

                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              SvgPicture.network(
                                'https://image.flaticon.com/icons/svg/1904/1904565.svg',
                                height: 100,
                              ),
                              Text('Course Schedule', style: cardTextStyle),
                            ],
                          ), // Column
                        ), // Card

                        Card(
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.network(
                                'https://image.flaticon.com/icons/svg/1904/1904527.svg',
                                height: 100,
                              ),
                              Text('Study Result', style: cardTextStyle),
                            ],
                          ),
                        ), // Card
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              SvgPicture.network(
                                'https://image.flaticon.com/icons/svg/1904/1904437.svg',
                                height: 120,
                              ),
                              Text('Attendance Recap', style: cardTextStyle),
                            ],
                          ),
                        ), // Card
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              SvgPicture.network(
                                'https://image.flaticon.com/icons/svg/1904/1904235.svg',
                                height: 120,
                              ),
                              Text('Course Booking', style: cardTextStyle),
                            ],
                          ),
                        ), // Card
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              SvgPicture.network(
                                'https://image.flaticon.com/icons/svg/1904/1904221.svg',
                                height: 120,
                              ),
                              Text('Course Plan', style: cardTextStyle),
                            ],
                          ),
                        ), // Card
                      ],
                    ), // GridView.count
                  ), // Expanded
                ],
              ), // Column
            ),
          ), // SafeArea
        ],
      ), // Stack
    ); // Scaffold
  }
}
