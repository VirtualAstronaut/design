import 'dart:ui' as ui;
import 'package:flutter/material.dart';
//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class GridBackground extends CustomPainter {
  static const strokeColor = Color(0xff191919);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_0_stroke.color = strokeColor;
    canvas.drawLine(Offset(size.width * 0.07764815, 0),
        Offset(size.width * 0.07764815, size.height), paint_0_stroke);

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_1_stroke.color = strokeColor;
    canvas.drawLine(Offset(size.width * 0.2486019, size.height * -0.0007692308),
        Offset(size.width * 0.2486019, size.height * 1.004090), paint_1_stroke);

    Paint paint_2_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_2_stroke.color = strokeColor;
    canvas.drawLine(Offset(size.width * 0.4195463, size.height * -0.001538462),
        Offset(size.width * 0.4195463, size.height * 1.008179), paint_2_stroke);

    Paint paint_3_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_3_stroke.color = strokeColor;
    canvas.drawLine(Offset(size.width * 0.5905000, size.height * -0.002307692),
        Offset(size.width * 0.5905000, size.height * 1.012269), paint_3_stroke);

    Paint paint_4_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_4_stroke.color = strokeColor;
    canvas.drawLine(Offset(size.width * 0.7614537, size.height * -0.003076923),
        Offset(size.width * 0.7614537, size.height * 1.016363), paint_4_stroke);

    Paint paint_5_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_5_stroke.color = strokeColor;
    canvas.drawLine(Offset(size.width * 0.9324074, size.height * -0.003846154),
        Offset(size.width * 0.9324074, size.height * 1.020453), paint_5_stroke);

    Paint paint_6_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_6_stroke.color = strokeColor;
    canvas.drawLine(
        Offset(size.width * 1.199648, size.height * 0.06111111),
        Offset(size.width * -0.08425926, size.height * 0.06111111),
        paint_6_stroke);

    Paint paint_7_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_7_stroke.color = strokeColor;
    canvas.drawLine(
        Offset(size.width * 1.198824, size.height * 0.1497222),
        Offset(size.width * -0.08507407, size.height * 0.1497222),
        paint_7_stroke);

    Paint paint_8_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_8_stroke.color = strokeColor;
    canvas.drawLine(
        Offset(size.width * 1.198009, size.height * 0.2383333),
        Offset(size.width * -0.08589815, size.height * 0.2383333),
        paint_8_stroke);

    Paint paint_9_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_9_stroke.color = strokeColor;
    canvas.drawLine(
        Offset(size.width * 1.197194, size.height * 0.3269444),
        Offset(size.width * -0.08671296, size.height * 0.3269444),
        paint_9_stroke);

    Paint paint_10_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_10_stroke.color = strokeColor;
    canvas.drawLine(
        Offset(size.width * 1.196370, size.height * 0.4155556),
        Offset(size.width * -0.08752778, size.height * 0.4155556),
        paint_10_stroke);

    Paint paint_11_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_11_stroke.color = strokeColor;
    canvas.drawLine(
        Offset(size.width * 1.195556, size.height * 0.5041667),
        Offset(size.width * -0.08835185, size.height * 0.5041667),
        paint_11_stroke);

    Paint paint_12_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_12_stroke.color = strokeColor;
    canvas.drawLine(
        Offset(size.width * 1.194741, size.height * 0.5927778),
        Offset(size.width * -0.08916667, size.height * 0.5927778),
        paint_12_stroke);

    Paint paint_13_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_13_stroke.color = strokeColor;
    canvas.drawLine(
        Offset(size.width * 1.193917, size.height * 0.6813889),
        Offset(size.width * -0.08998148, size.height * 0.6813889),
        paint_13_stroke);

    Paint paint_14_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_14_stroke.color = strokeColor;
    canvas.drawLine(
        Offset(size.width * 1.193102, size.height * 0.7700043),
        Offset(size.width * -0.09079630, size.height * 0.7700043),
        paint_14_stroke);

    Paint paint_15_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_15_stroke.color = strokeColor;
    canvas.drawLine(
        Offset(size.width * 1.192287, size.height * 0.8586154),
        Offset(size.width * -0.09162037, size.height * 0.8586154),
        paint_15_stroke);

    Paint paint_16_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01388889;
    paint_16_stroke.color = strokeColor;
    canvas.drawLine(
        Offset(size.width * 1.191463, size.height * 0.9472265),
        Offset(size.width * -0.09243519, size.height * 0.9472265),
        paint_16_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
