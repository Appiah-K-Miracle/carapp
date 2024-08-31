import 'package:carapp/components/griditemsscreen.dart';
import 'package:carapp/constants/colors.dart';
import 'package:carapp/screens/setting.dart';
import 'package:carapp/screens/soundalert.dart';
import 'package:carapp/screens/safetip.dart';
import 'package:carapp/screens/trafficlaw.dart';
import 'package:carapp/screens/tipsandoutdate.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';



class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    TipsAndOutdate(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: otherColor,
        color: Colors.white70,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          Icon(Icons.home),
          Icon(Icons.tips_and_updates),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: otherColor,
          // height: height,
          width: width,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: otherColor,
                ),
                height: height * 0.25,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.sort,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          // TODO: I will Change it later.
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.help_outline,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello Driver',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'change later',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white38,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
      
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
      
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                height: height * 0.75,
                width: width,
                child: GridView(
                  padding: EdgeInsets.all(30),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                       

                  ),
                  children:  [
                    GestureDetector(
                      onTap: ()  async {
                        await Navigator.push(context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: const TrafficLaw()
                            )
                        );
                      },
                      child: const GridItemsScreen(
                        text: "Traffic Laws",
                        imageUrl: "./assets/images/traffic.png",
                      ),
                    ),
                    const GridItemsScreen(
                      text: "Driving Tips",
                      imageUrl: "./assets/images/drivertest.png",
                    ),
                    GestureDetector(
                      onTap: ()  async {
                        await Navigator.push(context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: DriveAlertPage()
                            )
                        );
                      },
                      child: const GridItemsScreen(
                        text: "Driver Alert",
                        imageUrl: "./assets/images/alertssound.png",
                      ),
                    ),
                    GestureDetector(
                      onTap: ()  async {
                        await Navigator.push(context,
                            PageTransition(
                            type: PageTransitionType.fade,
                            child: SafeTip()
                            )
                        );
                      },
                      child: GridItemsScreen(
                        text: "Safety Practice",
                        imageUrl: "./assets/images/safe.png",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}