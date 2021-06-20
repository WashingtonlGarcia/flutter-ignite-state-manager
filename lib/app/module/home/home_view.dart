import 'package:flutter/material.dart';
import 'widgets/count_widget.dart';
import 'home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('State Manager'),
        ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: () => controller.setState(controller.state + 1)),
        body: CountWidget(controller: controller));
  }
}
