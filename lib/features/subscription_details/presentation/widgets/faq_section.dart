import 'package:flutter/material.dart';
import 'package:her_wallet/core/extensions/localization_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/core/constants/app_colors.dart';

class FaqItem {
  final String question;
  final String answer;
  final bool isExpanded;

  const FaqItem({
    required this.question,
    required this.answer,
    this.isExpanded = false,
  });

  FaqItem copyWith({bool? isExpanded}) {
    return FaqItem(
      question: question,
      answer: answer,
      isExpanded: isExpanded ?? this.isExpanded,
    );
  }
}

class FaqSection extends StatefulWidget {
  final List<FaqItem> faqItems;

  const FaqSection({super.key, required this.faqItems});

  @override
  State<FaqSection> createState() => _FaqSectionState();
}

class _FaqSectionState extends State<FaqSection> {
  late List<FaqItem> _faqItems;

  @override
  void initState() {
    super.initState();
    _faqItems = List.from(widget.faqItems);
  }

  void _toggleFaq(int index) {
    setState(() {
      _faqItems[index] = _faqItems[index].copyWith(
        isExpanded: !_faqItems[index].isExpanded,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => _toggleFaq(0),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Row(
              children: [
                Text(
                  context.localizations.frequentlyAskedQuestions,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10.w),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.textSecondary,
                  size: 20.sp,
                ),
              ],
            ),
          ),
        ),
        ..._faqItems.asMap().entries.map((entry) {
          final faq = entry.value;

          return Container(
            margin: EdgeInsets.only(bottom: 12.h),
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: AppColors.backgroundprimary,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColors.grey200, width: 1.w),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  faq.question,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  faq.answer,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: AppColors.textSecondary,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ],
    );
  }
}

