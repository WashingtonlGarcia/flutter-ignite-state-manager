import 'package:flutter/material.dart';
import 'package:flutter_state_manager/state_manager.dart';

void main() {
  return runApp(MaterialApp(
    home: HomeView(),
  ));
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  StateManager controller = StateManager();

  @override
  void initState() {
    controller.setState(0);
    controller.listen((state) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.setState(controller.state + 1),
      ),
      body: Center(
        child: Text(controller.state.toString()),
      ),
    );
  }
}
