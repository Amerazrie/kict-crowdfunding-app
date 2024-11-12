import 'package:flutter/material.dart';
import 'login.dart';
import 'splash.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

final navigatorKey = GlobalKey<NavigatorState>();

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'KICT Crowdfunding',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF1A1A1A),
          onPrimary: Colors.white,
        ),
      ),
      home: const SplashScreen(),
      routes: {
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
