import 'package:flutter/material.dart';
import 'subjects_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('منصة تعلّم')),
      body: Center(
        child: ElevatedButton(
          child: const Text('الدخول إلى المواد'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SubjectsScreen()),
            );
          },
        ),
      ),
    );
  }
}
