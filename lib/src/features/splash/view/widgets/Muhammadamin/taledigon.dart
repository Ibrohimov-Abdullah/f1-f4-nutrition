import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Taledigon extends StatefulWidget {
  const Taledigon({super.key});

  @override
  State<Taledigon> createState() => _TaledigonState();
}

class _TaledigonState extends State<Taledigon> {
  int selectedIndex = 0; // <-- faqat bitta index

  final items = ['All', 'Indian', 'Italian', 'Asian'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(items.length, (index) {
        final isSelected = selectedIndex == index;
        return Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index; // <-- faqat bitta tanlanadi
              });
            },
            child: Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                color: isSelected ? Color(0xFF129575) : Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  items[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Color(0xFF129575),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
