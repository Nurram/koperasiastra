import 'package:flutter/material.dart';

class SavingHeaderWidget extends StatelessWidget {
  const SavingHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
      elevation: 3,
      shadowColor: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Total Angsuran Anda Saat Ini',
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Rp 0',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 48,
                  color: Color(0xffeaeaea),
                  padding: const EdgeInsets.all(16),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Plafon Maksimal',
                            style: TextStyle(fontSize: 12),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.help_outline, size: 16),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Rp 74,158.100',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Color(0xffeaeaea),
              margin: const EdgeInsets.all(16),
            ),
            const SizedBox(height: 4),
            Text('Sisa Kemampuan Angsur', style: TextStyle(fontSize: 12)),
            const SizedBox(height: 8),
            Text(
              'Rp 1,792.154',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
