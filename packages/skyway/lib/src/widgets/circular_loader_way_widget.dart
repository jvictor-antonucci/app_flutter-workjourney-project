import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../utils/extensions/screen_extension.dart';

class CircularLoaderWay extends StatefulWidget {
  const CircularLoaderWay({
    this.size = 40,
    this.secondaryColor = Colors.white,
    this.primaryColor = Colors.white,
    this.lapDuration = 1000,
    this.strokeWidth,
  });
  final double size;
  final Color secondaryColor;
  final Color primaryColor;
  final int lapDuration;
  final double? strokeWidth;

  @override
  _CircularLoarderWay createState() => _CircularLoarderWay();
}

class _CircularLoarderWay extends State<CircularLoaderWay>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.lapDuration),
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(
        begin: 0.0,
        end: 1.0,
      ).animate(controller),
      child: CustomPaint(
        painter: _CirclePaint(
          secondaryColor: widget.secondaryColor,
          primaryColor: widget.primaryColor,
          strokeWidth: widget.strokeWidth ?? 5.scale,
        ),
        size: Size(widget.size, widget.size),
      ),
    );
  }
}

class _CirclePaint extends CustomPainter {
  final Color secondaryColor;
  final Color primaryColor;
  final double strokeWidth;

  double _degreeToRad(double degree) => degree * math.pi / 180;

  _CirclePaint({
    required this.secondaryColor,
    required this.primaryColor,
    this.strokeWidth = 15,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final double centerPoint = size.height / 2;

    final Paint paint = Paint()
      ..color = primaryColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    paint.shader = SweepGradient(
      colors: [secondaryColor.withOpacity(0), primaryColor],
      tileMode: TileMode.repeated,
      startAngle: _degreeToRad(0),
      endAngle: _degreeToRad(280.0),
    ).createShader(
      Rect.fromCircle(
        center: Offset(centerPoint, centerPoint),
        radius: 0,
      ),
    );

    final double scapSize = strokeWidth * 0.70;
    final double scapToDegree = scapSize / centerPoint;

    final double startAngle = _degreeToRad(0) + scapToDegree;
    final double sweepAngle = _degreeToRad(280) - (2 * scapToDegree);

    canvas.drawArc(
      Offset(0.0, 0.0) & Size(size.width, size.width),
      startAngle,
      sweepAngle,
      false,
      paint..color = primaryColor,
    );
  }

  @override
  bool shouldRepaint(_CirclePaint oldDelegate) {
    return true;
  }
}
