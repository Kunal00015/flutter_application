import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 35, 105, 245),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/avatar_placeholder.png'), // Replace with your image
                ),
                SizedBox(height: 10),
                Text(
                  'Khushaansh Kumar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Khushaanshkumar@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.timer, color: Colors.black),
            title: const Text('Timer'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.devices, color: Colors.black),
            title: const Text('Activity'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today, color: Colors.black),
            title: const Text('Attendance'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.assessment, color: Colors.black),
            title: const Text('Time Sheet'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.assignment, color: Colors.black),
            title: const Text('Report'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.business, color: Colors.black),
            title: const Text('Job Site'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.people, color: Colors.black),
            title: const Text('Team'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.black),
            title: const Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
