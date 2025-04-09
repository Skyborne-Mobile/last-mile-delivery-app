import 'package:flutter/material.dart';
import 'package:last_mile_delivery/core/widgets/custom_navigation_bar.dart';

class SettingsView extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;

  const SettingsView(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        elevation: 1,
      ),
      body: Center(
        child: Text('Settings Screen Body'),
      ),
      bottomNavigationBar: CustomNavigationBar(
          selectedIndex: selectedIndex, onItemTapped: onItemTapped),
    );
  }
}
