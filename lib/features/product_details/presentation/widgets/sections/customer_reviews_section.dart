import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';
import '../components/rating_progress_bar.dart';
import '../components/review_card.dart';

class CustomerReviewsSection extends StatelessWidget {
  final double overallRating;
  final int totalReviews;
  final List<ReviewData> reviews;
  final VoidCallback? onViewAllReviews;

  const CustomerReviewsSection({
    super.key,
    required this.overallRating,
    required this.totalReviews,
    required this.reviews,
    this.onViewAllReviews,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              context.localizations.customerReviews,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            TextButton(
              onPressed: onViewAllReviews,
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                minimumSize: Size(0, 32.h),
              ),
              child: Text(
                context.localizations.viewAll,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.mainColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),

        // Rating summary
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    overallRating.toString(),
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        size: 16.sp,
                        color:
                            index < overallRating.floor()
                                ? Colors.amber
                                : AppColors.greyIcon.withOpacity(0.3),
                      );
                    }),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '$totalReviews reviews',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  RatingProgressBar(stars: 5, percentage: 0.75, value: 0.75),
                  RatingProgressBar(stars: 4, percentage: 0.05, value: 0.05),
                  RatingProgressBar(stars: 3, percentage: 0.20, value: 0.20),
                  RatingProgressBar(stars: 2, percentage: 0.15, value: 0.15),
                  RatingProgressBar(stars: 1, percentage: 0.01, value: 0.01),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),

        // Reviews list
        ...reviews.map(
          (review) => Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: ReviewCard(
              userName: review.userName,
              userImage: review.userImage,
              rating: review.rating,
              reviewText: review.reviewText,
              date: review.date,
              likes: review.likes,
              onLikeTap: review.onLikeTap,
            ),
          ),
        ),

        // View all reviews button
        SizedBox(
          width: double.infinity,

          child: ElevatedButton(
            onPressed: onViewAllReviews,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.backgroundprimary,
              foregroundColor: AppColors.mainColor,
              elevation: 0,
              side: BorderSide(color: AppColors.mainColor, width: 1.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Text(
              'View All Reviews ($totalReviews)',
              style: TextStyle(
                color: AppColors.mainColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ReviewData {
  final String userName;
  final String userImage;
  final String rating;
  final String reviewText;
  final String date;
  final int likes;
  final VoidCallback? onLikeTap;

  ReviewData({
    required this.userName,
    required this.userImage,
    required this.rating,
    required this.reviewText,
    required this.date,
    required this.likes,
    this.onLikeTap,
  });
}

