import 'package:flutter/material.dart';
import 'package:telerehab/screens/moduledetails_screen.dart';

class ProgramPage extends StatelessWidget {
  final List<String> modules = [
    "Physio Therapy",
    "Nutritional Therapy",
    "Orthopeadic Technology",
    "phycaitric Therapy",
    "Occupational Therapy",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your Program'),
      ),
      body: ListView.builder(
        itemCount: modules.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: GestureDetector(
              onTap: () {
                // Navigate to the module details page when the user taps on a module
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ModuleDetailsPage(moduleName: modules[index]),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Color(0x79ffffff),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Text(
                  modules[index],
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
