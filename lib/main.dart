import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
          child: LayoutBuilder(
            builder: (_, constraints) => Container(
              width: constraints.widthConstraints().maxWidth,
              height: constraints.heightConstraints().maxHeight,
              color: Colors.yellow,
              child: CustomPaint(
                painter: FaceOutlinePainter(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FaceOutlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Defining a paint object
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.indigo;
    // canvas.drawRect(
    //   Rect.fromLTWH(20, 40, 100, 100),
    //   paint
    // );
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(20, 40, 100, 100), Radius.circular(20)),
        paint);

    canvas.drawOval(Rect.fromLTWH(size.width - 120, 40, 100, 100), paint);

    final mouth = Path();
    mouth.moveTo(size.width * 0.8, size.height * 0.6);
    mouth.arcToPoint(Offset(size.width * 0.2, size.height * 0.6),
        radius: Radius.circular(150), clockwise: true);
    mouth.arcToPoint(Offset(size.width * 0.8, size.height * 0.6),
        radius: Radius.circular(250), clockwise: true);

    canvas.drawPath(mouth, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
