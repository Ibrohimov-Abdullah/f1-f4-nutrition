import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/kommentlar.dart';
import '../../widgets/textfield.dart';
import 'ilova_page_2.dart';

class CommentModel {
  final String avatar;
  final String name;
  final String date;
  final String comment;
  bool liked;
  bool unliked;
  int likes;
  int dislikes;

  CommentModel({
    required this.avatar,
    required this.name,
    required this.date,
    required this.comment,
    this.liked = false,
    this.unliked = false,
    this.likes = 0,
    this.dislikes = 0,
  });
}

class ReviewsPage extends StatefulWidget {
  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  int commentCount = 200;
  int savedCount = 5;

  final List<CommentModel> _comments = [
    CommentModel(
        avatar: 'assets/comment_images/rasm.png',
        name: 'Bella Throne',
        date: 'June 12, 2020 - 19:35',
        comment: 'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate velit esse cillum',
        likes: 9,
        dislikes: 2),
    CommentModel(
        avatar: 'assets/comment_images/rasm1.png',
        name: 'Christopher Oshana',
        date: 'June 12, 2020 - 19:35',
        comment: 'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate velit esse cillum',
        likes: 7,
        dislikes: 1),
    CommentModel(
        avatar: 'assets/comment_images/rasm2.png',
        name: 'Kyle Austin',
        date: 'June 12, 2020 - 19:35',
        comment: 'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate velit esse cillum',
        likes: 7,
        dislikes: 1),
    CommentModel(
        avatar: 'assets/comment_images/rasm3.png',
        name: 'Jeniffer Wilson',
        date: 'June 12, 2020 - 19:35',
        comment: 'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate velit esse cillum',
        likes: 7,
        dislikes: 1),
    CommentModel(
        avatar: 'assets/comment_images/rasm4.png',
        name: 'Kate Johnson',
        date: 'June 12, 2020 - 19:35',
        comment: 'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate velit esse cillum',
        likes: 7,
        dislikes: 1),
  ];

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _addComment() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _comments.insert(
          0,
          CommentModel(
            avatar: 'assets/you.jpg',
            name: 'You',
            date: 'Now',
            comment: _controller.text,
          ),
        );
        _controller.clear();
        _focusNode.unfocus();
        commentCount++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 24.w),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationsPage()),
            );
          },
        ),
        title: Text(
          'Reviews',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 20.sp),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$commentCount Comments',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 14.sp),
                ),
                Text(
                  '$savedCount Saved',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 14.sp),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Text("Leave a comment",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600)),
            SizedBox(height: 12.h),
            CommentInputField(
              controller: _controller,
              focusNode: _focusNode,
              onSendPressed: _addComment,
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: ListView.builder(
                itemCount: _comments.length,
                itemBuilder: (context, index) {
                  final comment = _comments[index];
                  return CommentCard(comment: comment);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
