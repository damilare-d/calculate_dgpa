import 'package:calculate_dgpa/core/Model/course_model.dart';
import 'package:calculate_dgpa/ui/screen/calculator_cgpa/calculator_cgpa_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../setup/setup_dialog_ui.dart';

class CourseDetailsInputScreen extends StatefulWidget {
  final DialogRequest request;
  final Function(DialogResponse<GenericDialogResponse>) completer;
  const CourseDetailsInputScreen({
    required this.request,
    required this.completer,
  });
  @override
  _CourseDetailsInputScreenState createState() =>
      _CourseDetailsInputScreenState();
}

class _CourseDetailsInputScreenState extends State<CourseDetailsInputScreen> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CalculatorViewModel>.reactive(
        viewModelBuilder: () => widget.request.data as CalculatorViewModel,
        disposeViewModel: false,
        builder: (context, model, child) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            title: const Text(
              'Input Course Details',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25.0,
                color: Colors.purpleAccent,
              ),
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/listening.gif'),
                  const SizedBox(height: 10.0),
                  TextField(
                    controller: model.courseNameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Course Name',
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  TextField(
                    controller: model.courseCodeController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Course Code',
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    width: 300,
                    child: DropdownButton(
                      value: model.studentGrade,
                      onChanged: (value) => model.onSelectDropDow(value),
                      items: Grade.values.map((Grade grade) {
                        return DropdownMenuItem(
                            value: grade,
                            child: Text(grade.name.toUpperCase()));
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  TextField(
                    controller: model.courseUnitController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Course Unit',
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  TextButton(
                      onPressed: () {
                        model.addCourseDetails();
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'ADD',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.purpleAccent,
                        ),
                      )),
                ],
              ),
            ),
          );
        });
  }
}
