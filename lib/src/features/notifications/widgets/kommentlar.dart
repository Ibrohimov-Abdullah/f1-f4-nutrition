import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../view/pages/ilova.dart';

class CommentCard extends StatefulWidget {
  final CommentModel comment;

  const CommentCard({super.key, required this.comment});

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(widget.comment.avatar),
            radius: 24.r,
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.comment.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  widget.comment.date,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  widget.comment.comment,
                  style: TextStyle(fontSize: 14.sp),
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (widget.comment.liked) {
                            widget.comment.likes--;
                            widget.comment.liked = false;
                          } else {
                            widget.comment.likes++;
                            widget.comment.liked = true;
                            if (widget.comment.unliked) {
                              widget.comment.dislikes--;
                              widget.comment.unliked = false;
                            }
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(20.r),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 5.h,
                        ),
                        decoration: BoxDecoration(
                          color: widget.comment.liked
                              ? Color(0xff71B1A1)
                              : Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "👍",
                              style: TextStyle(
                                color: widget.comment.liked
                                    ? Colors.white
                                    : Colors.black54,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              '${widget.comment.likes}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: widget.comment.liked
                                    ? Colors.white
                                    : Colors.black54,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (widget.comment.unliked) {
                            widget.comment.dislikes--;
                            widget.comment.unliked = false;
                          } else {
                            widget.comment.dislikes++;
                            widget.comment.unliked = true;
                            if (widget.comment.liked) {
                              widget.comment.likes--;
                              widget.comment.liked = false;
                            }
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(20.r),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 5.h,
                        ),
                        decoration: BoxDecoration(
                          color: widget.comment.unliked
                              ? Colors.amber.withOpacity(0.15)
                              : Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "👎",
                              style: TextStyle(
                                color: widget.comment.unliked
                                    ? Colors.amber.shade700
                                    : Colors.black54,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              '${widget.comment.dislikes}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: widget.comment.unliked
                                    ? Colors.amber.shade700
                                    : Colors.black54,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
