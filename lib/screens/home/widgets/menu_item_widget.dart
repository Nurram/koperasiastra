import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final String image;
  final String label;

  const MenuItemWidget({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/$image.webp', width: 60),
        const SizedBox(height: 12),
        Text(
          label,
          maxLines: 2,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
