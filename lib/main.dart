import 'package:flutter/material.dart';
import 'package:website_proj_1/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Website Project 1',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 19, 111, 128)),
        ),
        home: MyHomePageState(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {}
