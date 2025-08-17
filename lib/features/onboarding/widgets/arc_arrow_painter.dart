import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArcArrowPainter extends CustomPainter {
  final double angle;

  ArcArrowPainter({required this.angle});

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = size.center(Offset.zero);
    final double radius = 45.r; // Responsive radius

    // Starting angle offset from 0° x-axis (e.g., start from top-right)
    final double startAngle = 0; // Start at -60 degrees

    // Draw gradient arc
    final Rect arcRect = Rect.fromCircle(center: center, radius: radius);
    final Paint arcPaint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 6.w
          ..strokeCap = StrokeCap.round
          ..shader = SweepGradient(
            startAngle: startAngle,
            endAngle: startAngle + angle,
            colors: [Colors.purple, Colors.deepPurpleAccent],
          ).createShader(arcRect);

    // Only draw arc if angle > 0
    if (angle > 0) {
      canvas.drawArc(arcRect, startAngle, angle, false, arcPaint);
    }
  }

  @override
  bool shouldRepaint(covariant ArcArrowPainter oldDelegate) {
    return oldDelegate.angle != angle;
  }
}
