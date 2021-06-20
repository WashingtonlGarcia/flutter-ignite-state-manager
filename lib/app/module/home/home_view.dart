import 'package:flutter/material.dart';
import '../../core/builder_widget.dart';
import 'home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Gerência de Estado'),
        ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: () => controller.setState(controller.state + 1)),
        body: BuilderWidget<HomeController>(
          controller: controller,
          builder: (BuildContext context, HomeController controller) {
            return Center(
              child: Text(controller.state.toString()),
            );
          },
        ));
  }
}
