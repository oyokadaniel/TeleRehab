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
        child: Text('Details for $moduleName'),
      ),
    );
  }
}
