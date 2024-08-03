import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/constants/color_constants.dart';

class FootballTile extends StatelessWidget {
  const FootballTile(
      {super.key,
      required this.image1,
      required this.image2,
      required this.title,
      required this.team1,
      required this.team2,
      required this.time});
  final String image1, image2, title, team1, team2, time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
          color: ColorConstants.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: TextStyle(color: const Color.fromARGB(255, 67, 65, 65)),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 11,
                  backgroundImage: NetworkImage(
                      image1),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  team1,
                  style: TextStyle(
                      color: ColorConstants.black, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(time),
                Spacer(),
                 Text(
                  team2,
                  style: TextStyle(
                      color: ColorConstants.black, fontWeight: FontWeight.bold),
                ),
                 SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  radius: 11,
                  backgroundImage: NetworkImage(
                      image2),
                ),             
               
              ],
            ),
            Divider(
              thickness: 3,
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 242, 201, 140),
                        Color.fromARGB(255, 245, 244, 242)
                      ])),
                  child: Center(
                      child: Text(
                    "MEGA  1.5 Lakhs",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  )),
                ),
                Spacer(),
                Icon(
                  Icons.notifications_active_outlined,
                  size: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
