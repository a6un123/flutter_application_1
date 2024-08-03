import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/dummydb.dart';
import 'package:flutter_application_1/view/Main__Screen/widget/cricket_Tile/cricket_tile.dart';

class CricketTab extends StatelessWidget {
  const CricketTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white.withOpacity(.25),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red,
                          border:
                              Border.all(width: 4, color: ColorConstants.RED),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  NetworkImage(Dummydb.Crickettablist[index]))),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: Dummydb.Crickettablist.length),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "upcomming matchs",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.black),
              ),
            ),
            ListView.separated(
                padding: EdgeInsets.all(10),
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return CricketTile(
                      image1: Dummydb.crickettiledata[index]["image1"],
                      image2: Dummydb.crickettiledata[index]["image2"],
                      title: Dummydb.crickettiledata[index]["title"],
                      team1: Dummydb.crickettiledata[index]["team1"],
                      team2: Dummydb.crickettiledata[index]["team2"],
                      time: Dummydb.crickettiledata[index]["time"]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount:Dummydb.crickettiledata.length)
          ],
        ),
      ),
    );
  }
}
