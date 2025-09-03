import 'package:flutter/material.dart';
import 'package:koperasiastra/screens/home/widgets/menu_item_widget.dart';

class HomeMenuWidget extends StatelessWidget {
  const HomeMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 24, top: 16, right: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: .86,
        children: [
          MenuItemWidget(image: 'ic_wallet', label: 'Pinjaman'),
          MenuItemWidget(image: 'ic_calculator', label: 'Simulasi Pinjaman'),
          MenuItemWidget(image: 'ic_file', label: 'Pinjaman Saya'),
          MenuItemWidget(image: 'ic_money', label: 'Pelunasan Pinjaman'),
          MenuItemWidget(image: 'ic_gadget', label: 'Gadget'),
          MenuItemWidget(image: 'ic_pulsa', label: 'Pulsa'),
          MenuItemWidget(image: 'ic_globe', label: 'Paket Data'),
          MenuItemWidget(image: 'ic_menus', label: 'Lebih Banyak'),
        ],
      ),
    );
  }
}
