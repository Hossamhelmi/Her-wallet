import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_wallet/features/onboarding/widgets/arc_arrow_painter.dart';

class ArcArrowProgress extends StatefulWidget {
  final double angle;
  final double size;
  final Duration animationDuration;

  const ArcArrowProgress({
    Key? key,
    required this.angle,
    this.size = 100.0,
    this.animationDuration = const Duration(milliseconds: 600),
  }) : super(key: key);

  @override
  State<ArcArrowProgress> createState() => _ArcArrowProgressState();
}

class _ArcArrowProgressState extends State<ArcArrowProgress>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: widget.angle,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
  }

  @override
  void didUpdateWidget(ArcArrowProgress oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.angle != widget.angle) {
      _animation = Tween<double>(
        begin: _animation.value,
        end: widget.angle,
      ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
      _controller.reset();
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Stack(
          children: [
            CustomPaint(
              size: Size(widget.size, widget.size),
              painter: ArcArrowPainter(angle: _animation.value),
            ),

            Positioned(
              left: widget.size / 2 - 12.w,
              top: widget.size / 2 - 12.h,
              child: Image.asset(
                'assets/images/Vector.png',
                width: 28.w,
                height: 24.h,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.arrow_forward,
                    size: 24.r,
                    color: Colors.purple,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
