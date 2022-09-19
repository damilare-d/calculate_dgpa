import 'package:calculate_dgpa/ui/screen/calculator_cgpa/calculator_cgpa_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CalculatorViewModel>.reactive(
        viewModelBuilder: () => CalculatorViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                model.showDialog();
              },
              child: const Icon(Icons.add),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Table(
                    border: TableBorder.symmetric(
                        inside:
                            const BorderSide(width: 1, color: Colors.black12),
                        outside: const BorderSide(width: 1)),
                    columnWidths: const {
                      0: FractionColumnWidth(0.5),
                      1: FractionColumnWidth(0.2),
                      2: FractionColumnWidth(0.15),
                      3: FractionColumnWidth(0.15),
                    },
                    children: List.generate(
                      model.courseDetails.length + 1,
                      (index) => TableRow(children: [
                        Text(
                          index == 0
                              ? 'Course Name'
                              : model.courseDetails[index - 1].courseName ??
                                  'n/b',
                        ),
                        Text(
                          index == 0
                              ? 'Course code'
                              : model.courseDetails[index - 1].courseCode ??
                                  'n/b',
                        ),
                        Text(
                          index == 0
                              ? 'Grade'
                              : model.courseDetails[index - 1].courseGrade ??
                                  "n/b",
                        ),
                        Text(index == 0
                            ? 'Credits'
                            : model.courseDetails[index - 1].courseUnit
                                .toString()),
                      ]),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text('Calculate GPA')),
                          Container(
                            child: Text('GPA = '),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text('Calculate CGPA')),
                          Container(
                            child: Text('GPA = '),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}

// class MyTableRow extends StatelessWidget {
//   const MyTableRow({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       child: TableRow(
//
//       ),
//     )
//   }
// }
