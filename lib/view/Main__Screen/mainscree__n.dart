import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/Utils/constants/image_constants.dart';
import 'package:flutter_application_1/view/Main__Screen/tabs/basketball_tab/basketballtab.dart';
import 'package:flutter_application_1/view/Main__Screen/tabs/cricket_tab/cricket_tabs.dart';
import 'package:flutter_application_1/view/Main__Screen/tabs/football_tab/football_tabs.dart';
import 'package:flutter_application_1/view/Main__Screen/tabs/hockey_tab/hockey_tab.dart';
import 'package:flutter_application_1/view/drawer_screen/drawerscreen.dart';
import 'package:flutter_application_1/view/notification_screen/notificationscreen.dart';
import 'package:flutter_application_1/view/vallet_screen/vallet_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer_screen(),
        backgroundColor: const Color.fromARGB(255, 236, 226, 226),
        appBar: AppBar(
          backgroundColor: Color(0xffB40000),
          title: Row(
            children: [Image.asset(ImageConstants.LOGO_PNG)],
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notificationscreen(),
                    ));
              },
              icon: Icon(Icons.notifications, color: ColorConstants.white, size: 24),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ValletScreen(),
                    ));
              },
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  child: Column(
                    children: [
                      Image.asset(
                        ImageConstants.TAB_PNG,
                        color: Color(0XFF8f8f8f),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Cricket",
                          style: TextStyle(
                              color: ColorConstants.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12))
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Image.asset(ImageConstants.TAB2_PNG,
                          color: Color(0xff8F8F8F)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Football",
                        style: TextStyle(
                            color: ColorConstants.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Image.asset(ImageConstants.TAB3_PNG),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Basketball",
                        style: TextStyle(
                            color: ColorConstants.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Image.asset(ImageConstants.TAB4_PNG),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Hocky",
                        style: TextStyle(
                            color: ColorConstants.white, fontSize: 12),
                      ),
                    ],
                  ),
                )
              ]),
        ),
        body: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
          CricketTab(),
          FootballTabs(),
          Basketballtab(),
          HockeyTab()
        ]),
      ),
    );
  }
}
