import 'package:flutter/material.dart';
import 'state_manager.dart';

typedef Builder<T> = Widget Function(BuildContext context, T state);

class BuilderWidget<T extends StateManager> extends StatefulWidget {
  final T controller;
  final Builder<T> builder;

  BuilderWidget({Key? key, required this.controller, required this.builder}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BuilderState<T>();
}

class BuilderState<T extends StateManager> extends State<BuilderWidget<T>> {
  @override
  void initState() {
    widget.controller.listen((state) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => widget.builder(context, widget.controller);
}
