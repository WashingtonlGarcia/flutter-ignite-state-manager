import 'package:flutter/material.dart';
import 'home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    controller.listen((state) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('State Manager'),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: () => controller.setState(controller.state + 1)),
      body: Center(
        child: Text(controller.state.toString()),
      ),
    );
  }
}
