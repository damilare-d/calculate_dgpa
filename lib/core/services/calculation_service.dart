import 'package:calculate_dgpa/ui/screen/calculator_cgpa/calculator_cgpa_view_model.dart';
import 'package:collection/collection.dart';

class CalculatorServices extends CalculatorViewModel {
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

  getCumulativeGradePointAverage2(totalLoadUnit, totalCourseUnit) {
    double CGPA = totalLoadUnit / totalCourseUnit;
    cumulativeGradePointAverage = CGPA;
    return cumulativeGradePointAverage;
  }
}
