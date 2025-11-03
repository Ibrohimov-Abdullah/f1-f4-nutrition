import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BirinchiOyna extends StatefulWidget {
  const BirinchiOyna({super.key});

  @override
  State<BirinchiOyna> createState() => _BirinchiOynaState();
}

class _BirinchiOynaState extends State<BirinchiOyna> {

  final List<String> images = [
    "assets/Card.png",
    "assets/Card (1).png",
    "assets/Card (2).png",
    "assets/Card (3).png",
    "assets/Card (4).png",
    "assets/Card (5).png",
    "assets/sahovat-kurica-2.jpg"
        "assets/norn.jpg"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            Row(
              children: [
                const SizedBox(width: 20),
                SvgPicture.asset("assets/arrow-left.svg"),
                const SizedBox(width: 50),
                const Text(
                  "Search recipes",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 20),


            Row(
              children: [
                const SizedBox(width: 20),
                Container(
                  width: 255,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1.3, color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      const Icon(Icons.search, size: 25),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/setting-4.svg",
                      width: 20,
                      height: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),


            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Recent Search",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),


            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 20,
                itemBuilder: (context, index) {

                  String imagePath = images[index % images.length];
                  return Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  ),
                  ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
