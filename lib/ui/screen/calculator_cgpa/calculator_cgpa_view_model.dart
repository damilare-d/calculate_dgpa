import 'package:calculate_dgpa/app/app_setup.locator.dart';
import 'package:calculate_dgpa/app/app_setup.router.dart';
import 'package:calculate_dgpa/core/Model/course_model.dart';
import 'package:calculate_dgpa/core/enums/dialogBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:calculate_dgpa/core/services/calculation_service.dart';

class CalculatorViewModel extends BaseViewModel {
  final _navigation = locator<NavigationService>();
  final idController = TextEditingController();
  final courseCodeController = TextEditingController();
  final courseNameController = TextEditingController();
  final courseUnitController = TextEditingController();
  final courseScoreController = TextEditingController();
  final courseGradeController = TextEditingController();
  final List<Course> _courseDetails = [];
  Grade studentGrade = Grade.a;

  void navigate() {
    _navigation.navigateTo(Routes.homeScreen);
  }

  void onSelectDropDow(value) {
    studentGrade = value;
    notifyListeners();
  }

  final _dialog = locator<DialogService>();
  void showDialog() {
    _dialog.showCustomDialog(
      variant: MyDialog.courseInputDetailsDialog,
      data: this,
    );
  }

  List<Course> get courseDetails => _courseDetails;

  void addCourseDetails() {
    _courseDetails.add(
      Course(
        id: _courseDetails.length,
        courseName: courseNameController.text,
        courseUnit: int.parse(courseUnitController.text),
        courseCode: courseCodeController.text,
        courseGrade: studentGrade.name.toUpperCase(),
        // courseGrade: courseGradeController.text,
        courseScore: 80,
      ),
    );
    notifyListeners();
  }
}
