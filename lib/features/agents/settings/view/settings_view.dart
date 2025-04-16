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
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        elevation: 1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 14,
            ),
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text(
                  'Delivery Agent',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text('agent@example.com'),
                leading: CircleAvatar(
                  child: Icon(Icons.person_outline),
                ),
                trailing: Icon(Icons.edit),
                onTap: () {
                  // Navigate to profile settings
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8.0,
            ),
            child: Container(
              height: 115,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: const Color.fromARGB(255, 243, 242, 242),
                    ),
                    child: ListTile(
                      title: Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: Icon(
                        Icons.person_outline,
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: const Color.fromARGB(255, 197, 196, 196),
                  ),
                  ListTile(
                    title: Text(
                      'Personal Information',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    leading: Icon(Icons.person_outline),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // TODO: Navigate to profile settings
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8.0,
            ),
            child: Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: const Color.fromARGB(255, 243, 242, 242),
                    ),
                    child: ListTile(
                      title: Text(
                        'Preferences',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: Icon(Icons.settings_outlined),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: const Color.fromARGB(255, 197, 196, 196),
                  ),
                  ListTile(
                    title: Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    leading: Icon(Icons.notifications_outlined),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // TODO: Navigate to notifications settings
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Appearance',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    leading: Icon(Icons.dark_mode_outlined),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // TODO: Navigate to appearance settings
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8.0,
            ),
            child: Container(
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text(
                  'App Info',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  'Version 1.0.0',
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
          selectedIndex: selectedIndex, onItemTapped: onItemTapped),
    );
  }
}
