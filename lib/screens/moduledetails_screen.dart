import 'package:flutter/material.dart';

class ModuleDetailsPage extends StatelessWidget {
  final String moduleName;

  ModuleDetailsPage({required this.moduleName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(moduleName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text("start your therapy"),
            Icon(Icons.not_started_rounded),
          ],
        ),
      ),
    );
  }
}
