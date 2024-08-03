import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';
import 'package:flutter_application_1/dummydb.dart';
import 'package:flutter_application_1/view/Main__Screen/widget/basketball_Tile/basketball_tile.dart';

class Basketballtab extends StatelessWidget {
  const Basketballtab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  return BasketballTile(
                    image1: Dummydb.basketballtiledata[index]["image1"],
                    image2: Dummydb.basketballtiledata[index]["image2"],
                    title: Dummydb.basketballtiledata[index]["title"],
                    team1: Dummydb.basketballtiledata[index]["team1"],
                    team2: Dummydb.basketballtiledata[index]["team2"],
                    time: Dummydb.basketballtiledata[index]["time"],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount:Dummydb.basketballtiledata.length)
          ],
        ),
      ),
    );
  }
}
