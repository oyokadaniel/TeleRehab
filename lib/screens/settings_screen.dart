import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  double _fontSize = 16.0;
  String _selectedLanguage = 'English';
  String _selectedTheme = 'Light';

  final List<String> _languages = ['English', 'Spanish', 'French', 'German'];
  final List<String> _themes = ['Light', 'Dark', 'System'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Enable Notifications'),
            trailing: Switch(
              value: _notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: _darkModeEnabled,
              onChanged: (value) {
                setState(() {
                  _darkModeEnabled = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Font Size'),
            trailing: Slider(
              value: _fontSize,
              onChanged: (value) {
                setState(() {
                  _fontSize = value;
                });
              },
              min: 10,
              max: 30,
              divisions: 20,
              label: _fontSize.round().toString(),
            ),
          ),
          ListTile(
            title: Text('Language'),
            trailing: DropdownButton<String>(
              value: _selectedLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLanguage = newValue!;
                });
              },
              items: _languages.map((String lang) {
                return DropdownMenuItem<String>(
                  value: lang,
                  child: Text(lang),
                );
              }).toList(),
            ),
          ),
          ListTile(
            title: Text('Theme'),
            trailing: DropdownButton<String>(
              value: _selectedTheme,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedTheme = newValue!;
                });
              },
              items: _themes.map((String theme) {
                return DropdownMenuItem<String>(
                  value: theme,
                  child: Text(theme),
                );
              }).toList(),
            ),
          ),
          ListTile(
            title: Text('App Version'),
            subtitle: Text('1.0.0'), // Replace with your app's actual version
          ),
        ],
      ),
    );
  }
}
