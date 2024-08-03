import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/Utils/constants/image_constants.dart';
import 'package:flutter_application_1/view/Mymatches/tabs/mymat_CricketTab.dart';
import 'package:flutter_application_1/view/drawer_screen/drawerscreen.dart';

class MyMatches extends StatefulWidget {
  const MyMatches({super.key});

  @override
  State<MyMatches> createState() => _MyMatchesState();
}

class _MyMatchesState extends State<MyMatches> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: Drawer_screen(),
          appBar: AppBar(
            backgroundColor: Color(0xffB40000),
            title: Text(
              "My Matches",
              style: TextStyle(
                  color: ColorConstants.white, fontWeight: FontWeight.bold),
            ),
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
          body: TabBarView(children: [
           MymatCrickettab(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.black,
            ),
          ]),
        ));
  }
}
