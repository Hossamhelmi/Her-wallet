import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class CommentInputSection extends StatefulWidget {
  const CommentInputSection({super.key});

  @override
  State<CommentInputSection> createState() => _CommentInputSectionState();
}

class _CommentInputSectionState extends State<CommentInputSection> {
  final TextEditingController _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundprimary,
      padding: EdgeInsets.all(16.w),
      child: SafeArea(
        child: Row(
          children: [
            _buildUserAvatar(),
            _buildCommentTextField(),
            _buildSendButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildUserAvatar() {
    return CircleAvatar(
      radius: 20.r,
      backgroundImage: AssetImage('assets/images/user1.jpg'),
    );
  }

  Widget _buildCommentTextField() {
    return Expanded(
      flex: 4,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        constraints: BoxConstraints(minHeight: 40.h, maxHeight: 120.h),
        child: TextField(
          controller: _commentController,
          decoration: InputDecoration(
            hintText: context.localizations.writeAComment,
            hintStyle: TextStyle(fontSize: 14.sp, color: AppColors.greyIcon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
              borderSide: BorderSide(color: AppColors.greyIcon),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
              borderSide: BorderSide(
                color: AppColors.greyIcon.withOpacity(0.3),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
              borderSide: BorderSide(color: AppColors.mainColor, width: 1.5),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 12.h,
            ),
            isDense: true,
          ),
          style: TextStyle(fontSize: 14.sp, color: AppColors.textPrimary),
          maxLines: null,
          textInputAction: TextInputAction.newline,
        ),
      ),
    );
  }

  Widget _buildSendButton() {
    return Expanded(
      child: GestureDetector(
        onTap: _handleSendComment,
        child: Container(
          height: 44.h,
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.mainColor.withOpacity(0.3),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Icon(
            Icons.send_outlined,
            color: AppColors.background,
            size: 20.sp,
          ),
        ),
      ),
    );
  }

  void _handleSendComment() {
    if (_commentController.text.trim().isNotEmpty) {
      // Handle send comment logic
      print('Sending comment: ${_commentController.text}');
      _commentController.clear();
    }
  }
}

