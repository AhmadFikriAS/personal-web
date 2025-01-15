import 'package:flutter/material.dart';
import 'package:personal_web/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) =>
          ResponsiveBreakpoints.builder(child: child!, breakpoints: [
        Breakpoint(start: 0, end: 450, name: MOBILE),
        Breakpoint(start: 451, end: 800, name: TABLET),
        Breakpoint(start: 801, end: 1920, name: DESKTOP),
        Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      ], breakpointsLandscape: [
        Breakpoint(start: 0, end: 1023, name: MOBILE),
        Breakpoint(start: 1024, end: 1599, name: TABLET),
        Breakpoint(start: 1600, end: double.infinity, name: DESKTOP),
      ]),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      title: 'Ahmad Fikri',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
