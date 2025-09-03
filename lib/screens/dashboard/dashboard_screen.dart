import 'package:flutter/material.dart';
import 'package:koperasiastra/screens/home/home_screen.dart';
import 'package:koperasiastra/screens/personal/personal_screen.dart';
import 'package:koperasiastra/screens/promo/promo_screen.dart';
import 'package:koperasiastra/screens/saving/saving_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _widgets = <Widget>[];

  int currentIndex = 0;

  @override
  void initState() {
    _widgets.addAll([
      const HomeScreen(),
      const PromoScreen(),
      SavingScreen(
        onBackPressed: () {
          currentIndex = 0;
          setState(() {});
        },
      ),
      const PersonalScreen(),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(backgroundColor: Theme.of(context).primaryColor),
      ),
      backgroundColor: Color(0xfff8f9fe),
      body: _widgets[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedItemColor: Color(0xff8aa8c2),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.explore),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.add_chart),
            label: 'Simpan Pinjam',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Personal',
          ),
        ],
      ),
    );
  }
}
