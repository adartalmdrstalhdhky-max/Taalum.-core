class Lesson {
  final String id;
  final String title;
  final String description;
  final List<String> objectives;
  final List<Question> questions;

  Lesson({
    required this.id,
    required this.title,
    required this.description,
    required this.objectives,
    required this.questions,
  });
}

class Question {
  final String question;
  final List<String> options;
  final int correctIndex;

  Question({
    required this.question,
    required this.options,
    required this.correctIndex,
  });
}

class LessonDB {
  static List<Lesson> grade1Math = [
    Lesson(
      id: "g1_math_1",
      title: "الأعداد من 1 إلى 10",
      description: "سيتعلم الطالب التعرف على الأعداد وكتابتها وعدّ الأشياء.",
      objectives: [
        "قراءة الأعداد من 1 إلى 10",
        "عدّ الأشياء بشكل صحيح",
        "تمييز العدد الأكبر والأصغر"
      ],
      questions: [
        Question(
          question: "كم عدد التفاحات هنا؟ (🍎🍎🍎)",
          options: ["1", "2", "3", "4"],
          correctIndex: 2,
        ),
        Question(
          question: "أي عدد أكبر؟",
          options: ["5", "2", "1", "3"],
          correctIndex: 0,
        ),
      ],
    ),
    Lesson(
      id: "g1_math_2",
      title: "الجمع البسيط",
      description: "مفهوم الجمع باستخدام أمثلة بصرية بسيطة.",
      objectives: [
        "فهم معنى الجمع",
        "حل مسائل جمع بسيطة"
      ],
      questions: [
        Question(
          question: "2 + 1 = ؟",
          options: ["1", "2", "3", "4"],
          correctIndex: 2,
        ),
      ],
    ),
  ];
}
