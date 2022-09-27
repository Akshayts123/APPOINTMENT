import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widget/people_list.dart';
import '../widget/search.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

enum ThemeStyle {
  Light,
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

ThemeStyle _currentStyle = ThemeStyle.Light;

class _HomepageState extends State<Homepage> {
  bool _showBackToTopButton = false;
  int _currentIndex = 0;
  List<int> _badgeCounts = List<int>.generate(4, (index) => index);

  List<bool> _badgeShows = List<bool>.generate(4, (index) => true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      appBar: AppBar(
        centerTitle: false,
        title: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Good Morning',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 3,
              ),
              Text('Get Doctor Appointment',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        actions: [
          IconButton(
              icon: Container(
                width: 25,
                height: 25,
                child: Image.asset(
                  'assets/date.png',
                  color: Colors.black54,
                ),
              ),
              onPressed: () {}),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 0, right: 0, bottom: 25),
              child: const search(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 26.0, right: 26, top: 10, bottom: 15),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: Color(0xFFF0C3CA),
                              ),
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/medicine.png",
                                fit: BoxFit.cover,
                                height: 25,
                                width: 25,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Medicine',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontFamily: 'NunitoSans',
                                        fontWeight: FontWeight.bold)),
                                Text('10 Doctors',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        fontFamily: 'NunitoSans',
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: Color(0xFFE0DCF5),
                              ),
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/tooth.png",
                                fit: BoxFit.cover,
                                height: 25,
                                width: 25,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Dentists',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontFamily: 'NunitoSans',
                                        fontWeight: FontWeight.bold)),
                                Text('13 Doctors',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        fontFamily: 'NunitoSans',
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: Color(0xFFEBF7CE),
                              ),
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/ent.png",
                                fit: BoxFit.cover,
                                height: 25,
                                width: 25,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Ent',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontFamily: 'NunitoSans',
                                        fontWeight: FontWeight.bold)),
                                Text('25 Doctors',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        fontFamily: 'NunitoSans',
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 5, left: 12, right: 3, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment(0.0, 0.0),
                      width: 140,
                      height: 40,
                      child: Text(
                        "Popular Doctor",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'NunitoSans',
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      alignment: Alignment(0.0, 0.0),
                      width: 100,
                      height: 40,
                      child: TextButton(
                        child: Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'NunitoSans',
                              color: Colors.grey),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: peoplelist(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    switch (_currentStyle) {
      case ThemeStyle.Light:
        return _buildLightDesign();
      default:
        return _buildLightDesign();
    }
  }

  Widget _buildLightDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Color(0xff040307),
      strokeColor: Color(0x30040307),
      unSelectedColor: Colors.grey,
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: Image.asset(
            "assets/house.png",
            fit: BoxFit.cover,
            height: 23,
            width: 23,
          ),
        ),
        CustomNavigationBarItem(
          icon: Image.asset(
            "assets/bell.png",
            fit: BoxFit.cover,
            color: Colors.grey,
            height: 23,
            width: 23,
          ),
        ),
        CustomNavigationBarItem(
          icon: Image.asset(
            "assets/chat.png",
            fit: BoxFit.cover,
            color: Colors.grey,
            height: 23,
            width: 23,
          ),
        ),
        CustomNavigationBarItem(
          icon: Image.asset(
            "assets/manuser.png",
            fit: BoxFit.fill,
            color: Colors.grey,
            height: 23,
            width: 23,
          ),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(
          () {
            _currentIndex = index;
          },
        );
      },
    );
  }

  Widget _buildNotificationBadge() {
    print("notification");
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Color(0xff040307),
      strokeColor: Color(0x30040307),
      unSelectedColor: Color(0xffacacac),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
          badgeCount: _badgeCounts[0],
          showBadge: _badgeShows[0],
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          badgeCount: _badgeCounts[1],
          showBadge: _badgeShows[1],
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.lightbulb_outline),
          badgeCount: _badgeCounts[2],
          showBadge: _badgeShows[2],
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.search),
          badgeCount: _badgeCounts[3],
          showBadge: _badgeShows[3],
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(
          () {
            _currentIndex = index;
            _badgeShows[index] = false;
          },
        );
      },
    );
  }
}
