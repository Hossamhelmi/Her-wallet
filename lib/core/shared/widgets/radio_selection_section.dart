import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/features/home/presentation/widgets/chips/custom_chip.dart';

class RadioSelectionSection extends StatefulWidget {
  final List list;
  // ignore: prefer_typing_uninitialized_variables
  final selected;
  final ValueChanged? onSelected;
  final String? title;

  const RadioSelectionSection({
    super.key,
    required this.list,
    this.selected,
    this.onSelected,
    this.title,
  });

  @override
  State<RadioSelectionSection> createState() => _RadioSelectionSectionState();
}

class _RadioSelectionSectionState extends State<RadioSelectionSection> {
  // ignore: prefer_typing_uninitialized_variables
  var selected;

  @override
  void initState() {
    super.initState();
    selected = widget.selected;
  }

  @override
  void didUpdateWidget(RadioSelectionSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update selection if parent widget's selected value changes
    if (widget.selected != oldWidget.selected && widget.selected != selected) {
      selected = widget.selected;
    }
  }

  void _handleSelection(dynamic value) {
    setState(() {
      selected = value;
    });

    // Notify parent widget of selection change if callback is provided
    widget.onSelected?.call(value);
  }

  // Method to programmatically update selection
  void updateSelection(dynamic value) {
    if (widget.list.contains(value) && selected != value) {
      setState(() {
        selected = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            itemCount: widget.list.length,
            separatorBuilder: (context, index) => SizedBox(width: 8.w),
            itemBuilder: (context, index) {
              return CustomChip(
                value: widget.list[index].toString(),
                isSelected: selected == widget.list[index],
                onTap: () => _handleSelection(widget.list[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
