import 'package:flutter/material.dart';
import 'package:koperasiastra/screens/dashboard/dashboard_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Koperasi Astra',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: getPrimarySwatch()),
      ),
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
    );
  }

  MaterialColor getPrimarySwatch() {
    const color = Color(0XFF0f4c82);

    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = (color.r * 255.0).round(),
        g = (color.g * 255.0).round(),
        b = (color.b * 255.0).round();

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(color.toARGB32(), swatch);
  }
}
