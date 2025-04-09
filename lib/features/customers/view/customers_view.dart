import 'package:flutter/material.dart';

import 'package:last_mile_delivery/core/widgets/custom_navigation_bar.dart';

class CustomersView extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomersView({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customers'),
        elevation: 1,
      ),
      body: const Center(
        child: Text('Customers Screen Body'),
      ),
      bottomNavigationBar: CustomNavigationBar(
          selectedIndex: selectedIndex, onItemTapped: onItemTapped),
    );
  }
}
