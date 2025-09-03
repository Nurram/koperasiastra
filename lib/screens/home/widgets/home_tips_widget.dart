import 'package:flutter/material.dart';
import 'package:koperasiastra/widgets/carg_bg_widget.dart';

class HomeTipsWidget extends StatelessWidget {
  const HomeTipsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tips Koperasi Astra Apps',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Langkah mudah mengajukan pinjaman melalui Koperasi Astra Apps',
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            height: 96,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 16),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 24),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    SizedBox(
                      height: 96,
                      width: 280,
                      child: CardBgWidget(borderRadius: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 24,
                      ),
                      child: Text(
                        'Akses Menu Pinjaman',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
