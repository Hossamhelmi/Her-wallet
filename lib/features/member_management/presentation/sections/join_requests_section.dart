import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../components/join_request_card.dart';

class JoinRequestsSection extends StatefulWidget {
  final List<JoinRequestData> joinRequests;
  final Function(String) onAcceptRequest;
  final Function(String) onRejectRequest;

  const JoinRequestsSection({
    super.key,
    required this.joinRequests,
    required this.onAcceptRequest,
    required this.onRejectRequest,
  });

  @override
  State<JoinRequestsSection> createState() => _JoinRequestsSectionState();
}

class _JoinRequestsSectionState extends State<JoinRequestsSection> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundprimary,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 1.h),
            child: Row(
              children: [
                Text(
                  context.localizations.joinRequests,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(width: 8.w),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: AppColors.greenIcon,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Text(
                    '${widget.joinRequests.length} New',
                    style: TextStyle(
                      color: AppColors.backgroundprimary,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  style: IconButton.styleFrom(
                    minimumSize: Size(44.w, 44.h),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  icon: AnimatedRotation(
                    turns: _isExpanded ? 0.5 : 0,
                    duration: Duration(milliseconds: 300),
                    child: Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 30.r,
                      color: AppColors.greyIcon,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_isExpanded) ...[
            Divider(height: 1.h),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              child: Column(
                children:
                    widget.joinRequests
                        .map(
                          (request) => JoinRequestCard(
                            data: request,
                            onAccept: () => widget.onAcceptRequest(request.id),
                            onReject: () => widget.onRejectRequest(request.id),
                          ),
                        )
                        .toList(),
              ),
            ),
            SizedBox(height: 8.h),
          ],
        ],
      ),
    );
  }
}

class JoinRequestData {
  final String id;
  final String name;
  final String timeAgo;
  final String imagePath;

  const JoinRequestData({
    required this.id,
    required this.name,
    required this.timeAgo,
    required this.imagePath,
  });
}

