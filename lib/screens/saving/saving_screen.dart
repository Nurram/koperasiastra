import 'package:flutter/material.dart';
import 'package:koperasiastra/screens/saving/widgets/saving_card_widget.dart';
import 'package:koperasiastra/screens/saving/widgets/saving_header_widget.dart';

class SavingScreen extends StatelessWidget {
  final Function() onBackPressed;

  const SavingScreen({super.key, required this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          color: Colors.white,
          child: Row(
            children: [
              InkWell(
                onTap: onBackPressed,
                child: const Icon(Icons.arrow_back),
              ),
              const SizedBox(width: 24),
              Text('Kredit', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              SavingHeaderWidget(),
              const SizedBox(height: 12),
              SavingCardWidget(
                colorHex: 0xff27ae61,
                title: 'Pinjaman Aktif',
                subtitle: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jenis Pinjaman', style: TextStyle(fontSize: 12)),
                      Text('Angsuran/Bulan', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text('Tidak ada pinjaman aktif'),
                ),
              ),
              const SizedBox(height: 12),
              SavingCardWidget(
                colorHex: 0xffffb808,
                title: 'Pinjaman Draft',
                titleColor: Colors.black87,
                subtitle: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jenis Pinjaman', style: TextStyle(fontSize: 12)),
                      Text('Angsuran/Bulan', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text('Tidak ada pinjaman aktif'),
                ),
              ),
              const SizedBox(height: 12),
              SavingCardWidget(
                colorHex: 0xffffb808,
                title: 'Pilih Produk Pinjaman',
                titleColor: Colors.black87,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ANNIV3R5ARY (HUT A)',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'TANPA BUNGA',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.info_outline),
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemCount: 5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
