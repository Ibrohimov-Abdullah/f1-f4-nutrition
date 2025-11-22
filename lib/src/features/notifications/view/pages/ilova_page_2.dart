import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/filter.dart';
import '../../widgets/notification.dart';


class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  String selectedTab = "All";
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Notifications",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilterButton(
                  title: "All",
                  isSelected: selectedTab == "All",
                  onTap: () => setState(() => selectedTab = "All"),
                ),
                SizedBox(width: 8.w),
                FilterButton(
                  title: "Read",
                  isSelected: selectedTab == "Read",
                  onTap: () => setState(() => selectedTab = "Read"),
                ),
                SizedBox(width: 8.w),
                FilterButton(
                  title: "Unread",
                  isSelected: selectedTab == "Unread",
                  onTap: () => setState(() => selectedTab = "Unread"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              children: [
                SizedBox(height: 8.h),
                Center(
                  child: Text(
                    "Today",
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 8.h),
                NotificationCard(title: "New Recipe Alert!", time: "17 mins ago"),
                NotificationCard(title: "New Recipe Alert!", time: "55 mins ago"),
                NotificationCard(title: "Save Recipe Alert!", time: "2 hrs ago"),
                SizedBox(height: 16.h),
                Center(
                  child: Text(
                    "Yesterday",
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 8.h),
                NotificationCard(title: "New Recipe Alert!", time: "19 hrs ago"),
                NotificationCard(title: "Save Recipe Alert!", time: "23 hrs ago"),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
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
