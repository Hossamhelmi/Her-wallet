import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/product_image_thumbnail.dart';

class ProductImageGallerySection extends StatefulWidget {
  final List<String> imagePaths;

  const ProductImageGallerySection({super.key, required this.imagePaths});

  @override
  State<ProductImageGallerySection> createState() =>
      _ProductImageGallerySectionState();
}

class _ProductImageGallerySectionState
    extends State<ProductImageGallerySection> {
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Main product image
        Container(
          height: 230.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(widget.imagePaths[selectedImageIndex]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        // Thumbnail row
        SizedBox(
          height: 50.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: widget.imagePaths.length,
            separatorBuilder: (context, index) => SizedBox(width: 8.w),
            itemBuilder: (context, index) {
              return ProductImageThumbnail(
                imagePath: widget.imagePaths[index],
                isSelected: index == selectedImageIndex,
                onTap: () {
                  setState(() {
                    selectedImageIndex = index;
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
