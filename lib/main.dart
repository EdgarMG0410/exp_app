import 'package:exp_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[900]
        ),
        scaffoldBackgroundColor: Colors.grey[900]
      ),
      initialRoute: 'home',
      routes: {
        'home':(_) => const HomePage() 
      }, 
    );
  }
}