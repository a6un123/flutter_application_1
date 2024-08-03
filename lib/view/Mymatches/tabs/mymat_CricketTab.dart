import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';

class MymatCrickettab extends StatelessWidget {
  const MymatCrickettab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: TabBar(
                tabs: [Text("Upcoming"), Text("Live"), Text("Completed")],
                indicatorColor: ColorConstants.RED,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: ColorConstants.RED,
                unselectedLabelColor: ColorConstants.black,
              ),
            ),
            Expanded(
                child: TabBarView(children: [
              Container(
               child: Image.network(
                fit: BoxFit.cover,
                "https://cdn.dribbble.com/userupload/7594998/file/original-62c78d3fd4338aa1f437ba539c00346f.jpg?resize=1024x768&vertical=center"),
              ),
              Container(
               child: Image.network(
                fit: BoxFit.cover,
                "https://cdn.dribbble.com/userupload/7594998/file/original-62c78d3fd4338aa1f437ba539c00346f.jpg?resize=1024x768&vertical=center"),
              ),
              Container(
                color: Colors.white,
              )
            ]))
          ],
        ));
  }
}
