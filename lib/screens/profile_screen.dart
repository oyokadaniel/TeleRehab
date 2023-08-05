import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Profile',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MedicalProfilePage(),
    );
  }
}

class MedicalProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Medical Profile')),
      body: Center(
        child: MedicalProfileCard(),
      ),
    );
  }
}

class MedicalProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20.0),
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Patient Information',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            _buildProfileInfo('Name', 'Daniel Oyoka'),
            _buildProfileInfo('Age', '21'),
            _buildProfileInfo('Location', 'Naguru, Kampala'),
            _buildProfileInfo('Nationality', 'Ugandan'),
            _buildProfileInfo('Medical Illness', 'Broken Limb'),
            SizedBox(height: 24),
            Text(
              'Proxy Information',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            _buildProfileInfo('Name', 'Samuel Odeke'),
            _buildProfileInfo('Relationship', 'Father'),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileInfo(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
