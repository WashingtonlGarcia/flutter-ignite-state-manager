import 'package:flutter/cupertino.dart';
import 'package:flutter_state_manager/app/core/state_manager.dart';

class BuilderWidget<T extends StateManager> extends StatefulWidget {
  final T controller;
  final Widget Function(BuildContext context, T state) builder;

  BuilderWidget({Key? key, required this.controller, required this.builder}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BuilderState();
}

class BuilderState extends State<BuilderWidget> {
  @override
  void initState() {
    widget.controller.listen((state) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => widget.builder(context, widget.controller.state);
}
