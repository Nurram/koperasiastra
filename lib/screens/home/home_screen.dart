import 'package:flutter/material.dart';
import 'package:koperasiastra/screens/home/widgets/home_header_widget.dart';
import 'package:koperasiastra/screens/home/widgets/home_menu_widget.dart';
import 'package:koperasiastra/screens/home/widgets/home_promo_widget.dart';
import 'package:koperasiastra/screens/home/widgets/home_tips_widget.dart';
import 'package:koperasiastra/widgets/divider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 
class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(backgroundColor: Theme.of(context).primaryColor),
      ),
      body: Stack(
        children: [
          Container(color: Color(0xffdcebfe)),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/logo.png',
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Hi, PRADITYA PUTRA',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const HomeHeaderWidget(),
              const HomeMenuWidget(),
              const DividerWidget(),
              const HomePromoWidget(),
              const DividerWidget(),
              const HomeTipsWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
