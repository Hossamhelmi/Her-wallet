import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/size_selection_chip.dart';

class ProductSizeSection extends StatefulWidget {
  final List<String> sizes;
  final String? initialSize;
  final Function(String)? onSizeSelected;

  const ProductSizeSection({
    super.key,
    required this.sizes,
    this.initialSize,
    this.onSizeSelected,
  });

  @override
  State<ProductSizeSection> createState() => _ProductSizeSectionState();
}

class _ProductSizeSectionState extends State<ProductSizeSection> {
  String? selectedSize;

  @override
  void initState() {
    super.initState();
    selectedSize = widget.initialSize ?? widget.sizes.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children:
              widget.sizes.map((size) {
                return SizeSelectionChip(
                  size: size,
                  isSelected: size == selectedSize,
                  onTap: () {
                    setState(() {
                      selectedSize = size;
                    });
                    widget.onSizeSelected?.call(size);
                  },
                );
              }).toList(),
        ),
      ],
    );
  }
}
