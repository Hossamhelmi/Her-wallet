import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import 'package:her_wallet/core/shared/widgets/search_field.dart';
import '../widgets.dart';

class MemberManagementScreen extends StatefulWidget {
  const MemberManagementScreen({super.key});

  @override
  State<MemberManagementScreen> createState() => _MemberManagementScreenState();
}

class _MemberManagementScreenState extends State<MemberManagementScreen> {
  // Mock data


  @override
  Widget build(BuildContext context) {
      final List<JoinRequestData> _joinRequests = [
    JoinRequestData(
      id: '1',
      name: context.localizations.sarahAlAhmad,
      timeAgo: context.localizations.requestedTwoDaysAgo,
      imagePath: 'assets/images/woman.jpg',
    ),
    JoinRequestData(
      id: '2',
      name: context.localizations.ahmedHassan,
      timeAgo: context.localizations.requestedOneDayAgo,
      imagePath: 'assets/images/user1.jpg',
    ),
    JoinRequestData(
      id: '3',
      name: context.localizations.fatimaAli,
      timeAgo: context.localizations.requestedThreeHoursAgo,
      imagePath: 'assets/images/woman.jpg',
    ),
  ];

  final List<MemberData> _members = [
    MemberData(
      id: '1',
      name: context.localizations.fatimaAli,
      imagePath: 'assets/images/user1.jpg',
      timeAgo: context.localizations.joinedSixMonthsAgo,
      isOwner: true,
    ),
    MemberData(
      id: '2',
      name: context.localizations.fatimaAli,
      imagePath: 'assets/images/user1.jpg',
      timeAgo: context.localizations.joinedSixMonthsAgo,
    ),
    MemberData(
      id: '3',
      name: context.localizations.fatimaAli,
      imagePath: 'assets/images/user1.jpg',
      timeAgo: context.localizations.joinedSixMonthsAgo,
    ),
    MemberData(
      id: '4',
      name: context.localizations.fatimaAli,
      imagePath: 'assets/images/user1.jpg',
      timeAgo: context.localizations.joinedSixMonthsAgo,
    ),
    MemberData(
      id: '5',
      name: context.localizations.fatimaAli,
      imagePath: 'assets/images/user1.jpg',
      timeAgo: context.localizations.joinedSixMonthsAgo,
    ),
    MemberData(
      id: '6',
      name: context.localizations.fatimaAli,
      imagePath: 'assets/images/user1.jpg',
      timeAgo: context.localizations.joinedSixMonthsAgo,
    ),
    MemberData(
      id: '7',
      name: context.localizations.fatimaAli,
      imagePath: 'assets/images/user1.jpg',
      timeAgo: context.localizations.joinedSixMonthsAgo,
    ),
  ];
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.0.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            child: SearchField(
              hintText: context.localizations.searchForMember,
              onChanged: (value) {
                // Implement search functionality
              },
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: AppColors.appBar,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: false,
        leading: Padding(
          padding: EdgeInsets.only(bottom: 5.h),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text(
          context.localizations.memberManagement,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 5.h),
              child: JoinRequestsSection(
                joinRequests: _joinRequests,
                onAcceptRequest: _handleAcceptRequest,
                onRejectRequest: _handleRejectRequest,
              ),
            ),
            MembersListSection(
              members: _members,
              onMemberTap: _handleMemberTap,
            ),
          ],
        ),
      ),
    );
  }

  void _handleAcceptRequest(String requestId) {
    // Implement accept request functionality
  }

  void _handleRejectRequest(String requestId) {
    // Implement reject request functionality
  }

  void _handleMemberTap(MemberData member) {
    // Implement member tap functionality
  }
}

