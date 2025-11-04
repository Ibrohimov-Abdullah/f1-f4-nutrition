import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrution_app/src/features/splash/view/widgets/Muhammadamin/taledigon.dart';

import 'menu.dart';
import 'muhammadaminniwigets.dart';
import 'muhammmadaminnign100qator.dart';

class Bodiyim extends StatelessWidget {
  const Bodiyim({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Color(0xffD9D9D9),width: 2),
                    ),
                    hintText: 'Search recipe',
                    hintStyle: TextStyle(color: Color(0xffD9D9D9)),
                    prefixIcon: Icon(Icons.search,color: Color(0xffD9D9D9),),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 50,
                width: 50,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0xFF129575),
                  child: Icon(Icons.tune, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Taledigon(),
          SizedBox(height: 20),
          SizedBox(
            height: 350,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildFoodCard("assets/salad.png", "4.5"),
                  SizedBox(width: 20),
                  buildFoodCard("assets/burger.png", "3.8"),
                  SizedBox(width: 20),
                  buildFoodCard("assets/shushi.png", "4.9"),
                  SizedBox(width: 20),
                  buildFoodCard("assets/salad.png", "3.5"),
                ],
              ),
            ),
          ),

          Text(
            "New Recipes",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          Pageyim(),
        ],
      ),
    );
  }
  Widget buildFoodCard(String imgPath, String rating) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: 250,
          width: 210,
          decoration: BoxDecoration(
            color: Color(0xffD9D9D9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Textundercontainer1(),
        ),
        Positioned(
          top: -70,
          child: Image.asset(imgPath, height: 150, width: 150),
        ),
        Positioned(
          top: -40,
          right: 20,
          child: Container(
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              color: Color(0xffFFE1B3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.orange, size: 20),
                Text(
                  rating,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

