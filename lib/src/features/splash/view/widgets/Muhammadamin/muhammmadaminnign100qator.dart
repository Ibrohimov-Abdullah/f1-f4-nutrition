import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'muhamadaminnigyanabirWigeti.dart';

class Pageyim extends StatelessWidget {
  const Pageyim({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      width: 500.w,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: [

          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 310,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            19
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ]
                    ),
                    child: Steyk(),
                  ),
                  Positioned(
                      top: -80,
                      left: 160,
                      child: Image.asset("assets/Prashka.png",height: 150,width: 150,)),

                ],
              )
            ],
          ),
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 310,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            19
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ]
                    ),
                    child: Steyk(),
                  ),
                  Positioned(
                      top: -80,
                      left: 160,
                      child: Image.asset("assets/Prashka.png",height: 150,width: 150,)),

                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
