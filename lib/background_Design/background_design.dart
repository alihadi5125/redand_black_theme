import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color(0xFF1a1a1a)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 1.00);
    path_0.lineTo(0, size.height * 1.00);
    path_0.lineTo(0, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);

    Paint paint_1 = new Paint()
      ..color = Color(0xFFf35242)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.16, size.height * -0.00);
    path_1.lineTo(size.width * 1.00, 0);
    path_1.lineTo(size.width * 1.00, size.height * 0.45);
    path_1.quadraticBezierTo(size.width * 0.88, size.height * 0.36,
        size.width * 0.80, size.height * 0.32);
    path_1.cubicTo(size.width * 0.61, size.height * 0.24, size.width * 0.36,
        size.height * 0.25, size.width * 0.18, size.height * 0.19);
    path_1.quadraticBezierTo(size.width * 0.05, size.height * 0.15,
        size.width * 0.00, size.height * 0.11);
    path_1.lineTo(size.width * 0.00, size.height * -0.00);
    path_1.lineTo(size.width * 0.16, size.height * -0.00);
    path_1.close();

    canvas.drawPath(path_1, paint_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
