class Course {
  int? id;
  String? courseName;
  String? courseCode;
  String? courseGrade;
  int? courseUnit;
  int? courseScore;

  Course(
      {this.id,
      this.courseName,
      this.courseUnit,
      this.courseCode,
      this.courseScore,
      this.courseGrade});

  getCourseGrade() {
    if (courseScore! >= 70 && courseScore! <= 100) {
      return Grade.a.toString();
    }
    if (courseScore! >= 60 && courseScore! <= 69) {
      return Grade.b.toString();
    }
    if (courseScore! >= 50 && courseScore! <= 59) {
      return Grade.c.toString();
    }
    if (courseScore! >= 40 && courseScore! <= 49) {
      return Grade.d.toString();
    }
    if (courseScore! >= 0 && courseScore! <= 39) {
      return Grade.f.toString();
    }
  }
}

enum Grade { a, b, c, d, f }
