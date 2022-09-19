import 'package:calculate_dgpa/ui/screen/course_details_input_screen.dart';
import 'package:flutter/material.dart';

import 'package:stacked_services/stacked_services.dart';

import '../app/app_setup.locator.dart';
import '../core/enums/dialogBox.dart';

void setupDialogUi() {
  var dialogService = locator<DialogService>();

  final builders = {
    MyDialog.basicDialog: (context, sheetRequest, completer) =>
        _BasicDialog(request: sheetRequest, completer: completer),
    MyDialog.courseInputDetailsDialog: (context, sheetRequest,
            Function(DialogResponse<GenericDialogResponse>) completer) =>
        CourseDetailsInputScreen(
          request: sheetRequest,
          completer: completer,
        ),
  };

  dialogService.registerCustomDialogBuilders(builders);
}

class _BasicDialog extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse) completer;
  const _BasicDialog({Key? key, required this.request, required this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              request.title ?? "Request Title",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              request.description ?? "Request Description",
              style: const TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => completer(DialogResponse()),
              child: Container(
                child: request.showIconInMainButton ?? false
                    ? const Icon(Icons.check_circle)
                    : Text(
                        request.mainButtonTitle ?? "Request MainButton Title"),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GenericDialogRequest {
  const GenericDialogRequest({
    this.message = 'Hello World',
  });

  final String message;
}

class GenericDialogResponse {
  const GenericDialogResponse({
    this.message = 'Hello World',
  });

  final String message;
}

class _GenericDialog extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse<GenericDialogResponse>) completer;

  const _GenericDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              request.title ?? 'Generic Dialog',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              request.description ?? "Request Description",
              style: const TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => completer(
                DialogResponse(data: const GenericDialogResponse()),
              ),
              child: Container(
                child: request.showIconInMainButton ?? false
                    ? const Icon(Icons.check_circle)
                    : Text(
                        request.mainButtonTitle ?? "Request MainButton Title"),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}