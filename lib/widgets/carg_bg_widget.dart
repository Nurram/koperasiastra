import 'package:flutter/material.dart';

class CardBgWidget extends StatelessWidget {
  final double borderRadius;

  const CardBgWidget({super.key, this.borderRadius = 30});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CustomPaint(painter: _CardBgPainter(), child: Container()),
    );
  }
}

class _CardBgPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // ===== Background biru utama =====
    final Paint background = Paint()..color = const Color(0xFF104e81);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), background);
    // ===== Warna lingkaran transparan =====
    final Paint circlePaint = Paint()..color = Colors.white.withAlpha(20);
    // Lingkaran kanan atas (paling besar)
    canvas.drawCircle(
      Offset(size.width * .95, size.height * .32),
      size.height * .9,
      circlePaint,
    );
    // Lingkaran kanan tengah
    canvas.drawCircle(
      Offset(size.width * .87, size.height * 0.7),
      size.height * .5,
      circlePaint,
    );
    // Lingkaran kanan bawah
    canvas.drawCircle(
      Offset(size.width * 0.75, size.height * .85),
      size.height * 0.4,
      circlePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
