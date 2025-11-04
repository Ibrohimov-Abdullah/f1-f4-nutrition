import 'package:flutter/material.dart';
import '../widgets/Muhammadamin/bodiy.dart';
class Yagonaoynam extends StatefulWidget {
  const Yagonaoynam({super.key});

  @override
  State<Yagonaoynam> createState() => _YagonaoynamState();
}
class _YagonaoynamState extends State<Yagonaoynam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 20,
          title: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("𝗛𝗲𝗹𝗹𝗼 𝗝𝗲𝗴𝗮", style: TextStyle(fontSize: 28)),
                  Text(
                    "What are you cooking today?",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          actions: [
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.amberAccent,
                  child: Image(
                    image: AssetImage("assets/togacham.png"),
                    height: 40,
                  ),
                ),
                SizedBox(width: 30),
              ],
            ),
          ],
        ),
        body: Bodiyim()
    );
  }
}