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
      theme: ThemeData(
        fontFamily: 'Arial',
        primarySwatch: Colors.indigo,
      ),
      home: const GradesScreen(),
    );
  }
}

/* ===================== الصفوف ===================== */

class GradesScreen extends StatelessWidget {
  const GradesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الصفوف')),
      body: ListView(
        children: [
          gradeTile(context, 'الصف الأول'),
          gradeTile(context, 'الصف الثاني'),
          gradeTile(context, 'الصف الثالث'),
        ],
      ),
    );
  }

  Widget gradeTile(BuildContext context, String grade) {
    return ListTile(
      title: Text(grade, style: const TextStyle(fontSize: 20)),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => SubjectsScreen(grade: grade),
          ),
        );
      },
    );
  }
}

/* ===================== المواد ===================== */

class SubjectsScreen extends StatelessWidget {
  final String grade;

  const SubjectsScreen({super.key, required this.grade});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(grade)),
      body: ListView(
        children: [
          subjectTile(context, 'الرياضيات'),
          subjectTile(context, 'اللغة العربية'),
          subjectTile(context, 'العلوم'),
        ],
      ),
    );
  }

  Widget subjectTile(BuildContext context, String subject) {
    return ListTile(
      title: Text(subject, style: const TextStyle(fontSize: 20)),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => LessonsScreen(subject: subject),
          ),
        );
      },
    );
  }
}

/* ===================== الدروس ===================== */

class LessonsScreen extends StatelessWidget {
  final String subject;

  const LessonsScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subject)),
      body: ListView(
        children: [
          lessonTile(context, 'الدرس الأول'),
          lessonTile(context, 'الدرس الثاني'),
          lessonTile(context, 'الدرس الثالث'),
        ],
      ),
    );
  }

  Widget lessonTile(BuildContext context, String lesson) {
    return ListTile(
      title: Text(lesson, style: const TextStyle(fontSize: 18)),
      trailing: const Icon(Icons.play_arrow),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => LessonContentScreen(title: lesson),
          ),
        );
      },
    );
  }
}

/* ===================== محتوى الدرس ===================== */

class LessonContentScreen extends StatelessWidget {
  final String title;

  const LessonContentScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'هنا سيظهر محتوى الدرس لاحقًا:\n\n'
          '✔ شرح مبسط\n'
          '✔ فيديو\n'
          '✔ أسئلة تفاعلية\n'
          '✔ تقييم تلقائي',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
