import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      extendBody: true,
      body: null,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF009879),
        shape: CircleBorder(),
        child: Icon(Icons.add, size: 32.w, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8.w,
          color: Colors.white,
          elevation: 10,
          child: SizedBox(
            height: 65.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home_outlined,
                    color: _selectedIndex == 0
                        ? Color(0xFF009879)
                        : Colors.grey[400],
                    size: 28.w,
                  ),
                  onPressed: () => _onItemTapped(0),
                ),
                IconButton(
                  icon: Icon(
                    Icons.bookmark_outline,
                    color: _selectedIndex == 1
                        ? Color(0xFF009879)
                        : Colors.grey[400],
                    size: 28.w,
                  ),
                  onPressed: () => _onItemTapped(1),
                ),
                SizedBox(width: 40.w),
                IconButton(
                  icon: Icon(
                    Icons.notifications_none,
                    color: _selectedIndex == 2
                        ? Color(0xFF009879)
                        : Colors.grey[400],
                    size: 28.w,
                  ),
                  onPressed: () => _onItemTapped(2),
                ),
                IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    color: _selectedIndex == 3
                        ? Color(0xFF009879)
                        : Colors.grey[400],
                    size: 28.w,
                  ),
                  onPressed: () => _onItemTapped(3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
