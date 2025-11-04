import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Textundercontainer1 extends StatefulWidget {
  const Textundercontainer1({super.key});

  @override
  State<Textundercontainer1> createState() => _Textundercontainer1State();
}

class _Textundercontainer1State extends State<Textundercontainer1> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 90),
        Center(
          child: Text(
            "Classic American",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "CheesBurger",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Text(
          "Time                                          ",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 30,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -7,
                child: Row(
                  children: [
                    Text("   15 Mins", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 105),
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            liked = !liked;
                          });
                        },
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          "assets/icons/Union.svg",
                          height: 20,
                          width: 20,
                          color: liked ? Colors.blue : Colors.grey, // rang o‘zgaradi
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
