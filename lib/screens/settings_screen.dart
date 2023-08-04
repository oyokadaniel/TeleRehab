import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          _buildSectionHeader('General Settings'),
          _buildOption(
              'Dark Mode', Switch(value: false, onChanged: (value) {})),
          _buildOption(
              'Notification', Switch(value: true, onChanged: (value) {})),
          _buildSectionHeader('Account Settings'),
          _buildOption('Edit Profile', Icon(Icons.edit)),
          _buildOption('Change Password', Icon(Icons.lock)),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildOption(String title, Widget trailingWidget) {
    return ListTile(
      title: Text(title),
      trailing: trailingWidget,
      onTap: () {
        // Handle option tap
      },
    );
  }
}
