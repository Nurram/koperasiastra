import 'package:flutter/material.dart';

class SavingCardWidget extends StatelessWidget {
  final String title;
  final int colorHex;
  final Widget? subtitle;
  final Widget child;
  final Color titleColor;

  const SavingCardWidget({
    super.key,
    required this.title,
    required this.colorHex,
    required this.child,
    this.subtitle,
    this.titleColor = Colors.white
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
      elevation: 3,
      shadowColor: Colors.black54,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  color: Color(colorHex),
                ),
                padding: const EdgeInsets.all(16),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: titleColor,
                  ),
                ),
              ),
            ],
          ),
          if (subtitle != null)
            Column(
              children: [
                subtitle!,
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Color(0xffeaeaea),
                ),
              ],
            ),
          child,
        ],
      ),
    );
  }
}
