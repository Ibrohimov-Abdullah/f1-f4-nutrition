import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentInputField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final VoidCallback onSendPressed;

  const CommentInputField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onSendPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: focusNode.hasFocus
              ? Color(0xff71B1A1)
              : Colors.grey.shade300,
          width: 1.5,
        ),
      ),
      child: TextField(
        focusNode: focusNode,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(16.w, 16.h, 12.w, 16.h),
          hintText: 'Say something...',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
          border: InputBorder.none,
          suffixIcon: Padding(
            padding: EdgeInsets.all(8.0.w),
            child: ElevatedButton(
              onPressed: onSendPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              child: Text("Send",
                  style: TextStyle(color: Colors.white, fontSize: 16.sp)),
            ),
          ),
        ),
      ),
    );
  }
}
