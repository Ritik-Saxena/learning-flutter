import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final country_images = [
    'barcelona',
    'greece',
    'japan',
    'rome',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  ), // IconButton
                  IconButton(
                    icon: Icon(Icons.extension),
                    onPressed: () {},
                  ), // IconButton
                ],
              ), // Row
              SizedBox(height: 30.0),
              Text.rich(
                TextSpan(
                  text: 'Welcome, ',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'Charlie',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.normal,
                      ),
                    ), // TextSpan
                  ],
                ), // TextSpan
              ), // Text.rich
              SizedBox(height: 30.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                ),
              ), // TextField
              SizedBox(height: 70),
              Text(
                'Saved Places',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ), // Text
              SizedBox(height: 20),
              SingleChildScrollView(
                child: SizedBox(
                  height: 300,
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.zero,
                    childAspectRatio: 1.491,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      for (String country in country_images) Image.asset('asset/images/${country}.png'),
                      //   //   Image.asset('asset/images/greece.png'),
                    ],
                  ), // GridView
                ), // SizedBox
              ),
            ],
          ), // Column
        ),
      ),
    ); // Scaffold
  }
}
