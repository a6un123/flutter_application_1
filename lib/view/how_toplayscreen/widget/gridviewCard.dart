import 'package:flutter/material.dart';

class Gridviewcard extends StatelessWidget {
  const Gridviewcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("assets/images/logo_dr_11.png"),
          SizedBox(
            height: 5,
          ),
          Text(
            "What is Dream11",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
