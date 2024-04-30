import 'package:flutter/material.dart';
import 'package:starlearnbook/homepage_screen.dart';
import 'package:starlearnbook/introduction.dart';
import 'package:starlearnbook/notifikasi.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool show = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:
            const Color(0xFF233144), 
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => show
            ? IntroScreen()
            : const Homepage(), 
        '/notifikasi': (context) => Notifikasi(), 
      },
      initialRoute: '/',
    );
  }
}
