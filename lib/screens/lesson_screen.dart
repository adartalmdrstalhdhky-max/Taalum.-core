import 'package:flutter/material.dart';

class LessonScreen extends StatelessWidget {
  final String subject;

  const LessonScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subject)),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'هنا سيظهر محتوى الدرس لاحقًا (فيديو – شرح – أسئلة)',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
