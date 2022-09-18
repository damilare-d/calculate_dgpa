import 'package:collection/collection.dart';

class Course {
  int id;
  String courseName;
  String courseCode;
  Grade? courseGrade;
  int courseUnit;
  int? courseScore;

  Course(
      {required this.id,
      required this.courseName,
      required this.courseUnit,
      required this.courseCode,
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

  int? totalCourseUnit = 0;
  int? totalLoadUnit = 0;
  List<int>? coursesUnit;
  List<int>? coursesScore;
  double? gradePointAverage;
  double? cumulativeGradePointAverage;

  getTotalCourseUnit() {
    //for (int i = 0; i <= coursesUnit.length; i++) {}
    final addedCoursesUnit = coursesUnit!.sum;
    totalCourseUnit = totalCourseUnit! + addedCoursesUnit;
    return totalCourseUnit;
  }

  getTotalLoadUnit() {
    for (int i = 0; i < coursesUnit!.length; i++) {
      final addedLoadedUnits = coursesUnit![i] * coursesScore![i];
      totalLoadUnit = (totalLoadUnit! + addedLoadedUnits);
      return totalLoadUnit;
    }
  }

  getGradePointAverage(totalLoadUnit, totalCourseUnit) {
    double GPA = totalLoadUnit / totalCourseUnit;
    gradePointAverage = GPA;
    return gradePointAverage;
  }

  getCumulativeGradePointAverage(totalLoadUnit, totalCourseUnit) {
    double CGPA = totalLoadUnit / totalCourseUnit;
    cumulativeGradePointAverage = CGPA;
    return cumulativeGradePointAverage;
  }
}

enum Grade { a, b, c, d, f }
