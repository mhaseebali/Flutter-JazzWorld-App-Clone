import 'package:flutter/material.dart';
import './some-icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('My App'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
// Perform search action
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
// Perform notifications action
              },
            ),
            IconButton(
              icon: Icon(Icons.card_giftcard),
              onPressed: () {
// Perform rewards action
              },
            ),
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
// Perform reload action
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                accountName: Text('Haseeb'),
                accountEmail: Text('Haseeb@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/1.JPG'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Home'),
                onTap: () {
// Navigate to user profile page
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
// Navigate to settings page
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        color: Color.fromARGB(255, 92, 73, 73),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Your Balance',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '\$1000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Haseeb',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Colors.white),
                                  ),
                                  SizedBox(width: 16.0),
                                  CircleAvatar(
                                    backgroundImage: AssetImage('images/1.JPG'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 32.0, vertical: 16.0),
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  // Perform recharge action
                                },
                                child: Text('Tap to Recharge',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Colors.black)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 0.0),
                    ],
                  ),
                ),
              ),
              Container(
                // width: 10,
                padding: EdgeInsets.all(8.0),
                height: 140,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(60.0),
                //   color: Colors.black,
                // ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.wifi),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            '0 MB',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Remaining',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 8),
                          Container(
                            width: 60,
                            height: 3,
                            color: Colors.red,
                            margin: EdgeInsets.symmetric(horizontal: 18),
                          ),
                          // SizedBox(height: 8),
                          // Text(
                          //   'Remaining',
                          //   style: TextStyle(
                          //     fontSize: 10,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.phone),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            '100 Mins',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Remaining',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 8),
                          Container(
                            width: 60,
                            height: 3,
                            color: Colors.red,
                            margin: EdgeInsets.symmetric(horizontal: 18),
                          ),
                          // SizedBox(height: 8),
                          // Text(
                          //   'Remaining',
                          //   style: TextStyle(
                          //     fontSize: 10,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.sms),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            '20 SMS',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Remaining',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 8),
                          Container(
                            width: 60,
                            height: 3,
                            color: Colors.red,
                            margin: EdgeInsets.symmetric(horizontal: 18),
                          ),
                          // SizedBox(height: 8),
                          // Text(
                          //   'Remaining',
                          //   style: TextStyle(
                          //     fontSize: 10,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Container(
                  height: 80,
                  // padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pink],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.card_giftcard, color: Colors.white),
                          // SizedBox(width: 5),
                          Text(
                            'Make your Bundle',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 3,
                              height: double.infinity,
                              color: Colors.white,
                            ),
                          ]),
                      SizedBox(width: 1.0),
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            'My Jazz',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(12.0),
              //   child: Container(
              //     height: 140,
              //     width: 370,
              //     // padding: EdgeInsets.all(10),
              //     decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //         colors: [Colors.purple, Colors.pink],
              //         begin: Alignment.centerLeft,
              //         end: Alignment.centerRight,
              //       ),
              //       borderRadius: BorderRadius.circular(16.0),
              //     ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.center,
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [],
              //         ),
              //       ],
              //     ),
              //   ),
              // )

              Container(
                child: Container(
                  child: RoundedCard(),
                ),
              )
            ], //children
          ),
        ),
      ),
    );
  }
}
