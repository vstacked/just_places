import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:just_places/features/splash_screen/presentation/splash_screen_page.dart';
import 'package:just_places/firebase_options.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'just places',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const SplashScreenPage(),
      );
}
