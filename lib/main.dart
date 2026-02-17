import 'package:flutter/material.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(const SmartSchoolApp());
}

class SmartSchoolApp extends StatelessWidget {
  const SmartSchoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart School',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DashboardScreen(),
    );
  }
}
