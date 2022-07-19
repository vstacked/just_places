import 'package:flutter/material.dart';
import 'package:just_places/features/places/presentation/places_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).whenComplete(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const PlacesPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('just places')),
    );
  }
}
