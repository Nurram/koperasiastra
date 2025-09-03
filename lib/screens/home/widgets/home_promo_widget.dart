import 'package:flutter/material.dart';

class HomePromoWidget extends StatelessWidget {
  const HomePromoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 24),
            child: Text(
              'Hot Promo',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 144,
            margin: const EdgeInsets.only(top: 16, bottom: 24),
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 24),
              itemCount: 5,
              itemBuilder: (context, index) => Align(
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(16),
                  child: Image.asset(
                    'assets/img_dummy_promo.webp',
                    height: double.infinity,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
