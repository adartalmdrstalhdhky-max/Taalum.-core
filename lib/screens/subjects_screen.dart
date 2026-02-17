import 'package:flutter/material.dart';
import '../data/lesson_db.dart';
import 'lesson_screen.dart';

class SubjectScreen extends StatelessWidget {
  final String subject;

  const SubjectScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    final lessons = LessonDB.getLessons(subject);

    return Scaffold(
      appBar: AppBar(title: Text(subject)),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          final lesson = lessons[index];

          return ListTile(
            title: Text(lesson.title),
            trailing: const Icon(Icons.play_arrow),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LessonScreen(lesson: lesson),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
