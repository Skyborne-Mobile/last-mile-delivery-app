import 'package:flutter/material.dart';

import 'package:last_mile_delivery/core/themes/app_theme.dart';

import 'package:last_mile_delivery/features/customers/view/customers_view.dart';

import 'package:last_mile_delivery/features/home/view/home_view.dart';

import 'package:last_mile_delivery/features/settings/view/settings_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _setScreen() {
    switch (_selectedIndex) {
      case 0:
        return HomeView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
      case 1:
        return CustomersView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
      case 2:
        return SettingsView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
      default:
        return HomeView(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme.dark,
      theme: AppTheme.light,
      themeMode: ThemeMode.system,
      home: _setScreen(),
    );
  }
}
