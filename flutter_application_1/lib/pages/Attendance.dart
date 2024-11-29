import 'package:flutter/material.dart';
import 'Sidebar.dart'; // Import Sidebar.dart here
import 'Members.dart';


class Attendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'ATTENDANCE', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: const Color.fromARGB(255, 35, 105, 245),
        iconTheme: const IconThemeData(
          color: Colors.white, // Set AppBar icons to white
        ),
      ),
      drawer: Sidebar(), // Use the Sidebar widget here
      body: Column(
        children: [
          // Top Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.group, color: Color.fromARGB(255, 35, 105, 245)),
                    const SizedBox(width: 8),
                    const Text(
                      'All Members',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Members()),);
                  },
                  child: const Text('Change', style: TextStyle(color: Color.fromARGB(255, 35, 105, 245))),
                ),
              ],
            ),
          ),
          // Date Selector
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.grey),
                const Text(
                  'Tue, Aug 31 2022',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ],
            ),
          ),
          const Divider(),
          // List of Members
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return MemberCard();
              },
            ),
          ),
          // Bottom Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: const Text('Show Map view', style: TextStyle(color: Color.fromARGB(255, 35, 105, 245))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MemberCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar_placeholder.png'), // Replace with your image
          ),
          title: const Text(
            'Wade Warren',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.arrow_upward, color: Colors.green, size: 16),
              const SizedBox(width: 4),
              const Text('09:30 am'),
              const SizedBox(width: 16),
              Icon(Icons.warning, color: Colors.orange, size: 16),
              const SizedBox(width: 4),
              const Text(
                'WORKING',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.calendar_today, color: Color.fromARGB(255, 35, 105, 245)),
              const SizedBox(width: 8),
              Icon(Icons.location_on, color: Color.fromARGB(255, 35, 105, 245)),
            ],
          ),
        ),
      ),
    );
  }
}
