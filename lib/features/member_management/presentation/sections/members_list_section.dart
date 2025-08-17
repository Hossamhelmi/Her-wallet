import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../components/member_card.dart';

class MembersListSection extends StatelessWidget {
  final List<MemberData> members;
  final Function(MemberData) onMemberTap;

  const MembersListSection({
    super.key,
    required this.members,
    required this.onMemberTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 2.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.localizations.members,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textPrimary,
                ),
              ),
              Text(
                '${members.length} Members',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ),
        ...members.map(
          (member) =>
              MemberCard(data: member, onTap: () => onMemberTap(member)),
        ),
        SizedBox(height: 4.h),
      ],
    );
  }
}

class MemberData {
  final String id;
  final String name;
  final String imagePath;
  final String timeAgo;
  final bool isOwner;

  const MemberData({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.timeAgo,
    this.isOwner = false,
  });
}

