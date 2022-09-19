import 'package:calculate_dgpa/ui/screen/home_screen/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
        viewModelBuilder: () => HomeScreenViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Home Screen'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('My supposedly HomeScreen'),
                  ElevatedButton(
                    onPressed: () {
                      model.navigate();
                    },
                    child: const Text('CGPA calculator'),
                  )
                ],
              ),
            ),
          );
        });
  }
}
