import 'package:flutter/material.dart';
import '../home_controller.dart';

class CountWidget extends StatefulWidget {
  final HomeController controller;

  const CountWidget({Key? key, required this.controller}) : super(key: key);

  @override
  _CountWidgetState createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  @override
  void initState() {
    widget.controller.listen((state) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.controller.state.toString()),
    );
  }
}
