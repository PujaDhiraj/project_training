import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageStage createStage() => _HomePageStage();

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _HomePageStage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text('HomepageText'),
      ),
    );
  }
}
