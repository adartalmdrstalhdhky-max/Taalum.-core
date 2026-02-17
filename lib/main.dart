import 'package:flutter/material.dart';

void main() {
  runApp(const TaalumApp());
}

class TaalumApp extends StatelessWidget {
  const TaalumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'منصة تعلم',
      home: const GradesScreen(),
    );
  }
}

class GradesScreen extends StatelessWidget {
  const GradesScreen({super.key});

  final List<String> grades = const [
    'الصف الأول',
    'الصف الثاني',
    'الصف الثالث',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الصفوف')),
      body: ListView.builder(
        itemCount: grades.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(grades[index]),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SubjectsScreen(grade: grades[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class SubjectsScreen extends StatelessWidget {
  final String grade;
  const SubjectsScreen({super.key, required this.grade});

  final List<String> subjects = const [
    'الرياضيات',
    'اللغة العربية',
    'العلوم',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(grade)),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(subjects[index]),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LessonsScreen(subject: subjects[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class LessonsScreen extends StatelessWidget {
  final String subject;
  const LessonsScreen({super.key, required this.subject});

  final List<String> lessons = const [
    'الدرس الأول',
    'الدرس الثاني',
    'الدرس الثالث',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subject)),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lessons[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LessonContentScreen(
                    lesson: lessons[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class LessonContentScreen extends StatelessWidget {
  final String lesson;
  const LessonContentScreen({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lesson)),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'هنا سيظهر محتوى الدرس لاحقًا (شرح – فيديو – أسئلة)',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
