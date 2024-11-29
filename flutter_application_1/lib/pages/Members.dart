import 'package:flutter/material.dart';

class Members extends StatefulWidget {
  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  // List of all members
  List<String> members = ['Sumit Chaudhary','Ashwini','Ritika Singh','Ishu','Khushaash Kumar','Kunal','Robert Downey', 'Francis Diakowsky'];

  // List to hold filtered members
  List<String> filteredMembers = [];

  @override
  void initState() {
    super.initState();
    filteredMembers = members; // Initially, show all members
  }

  // Search functionality
  void _filterMembers(String query) {
    final results = members.where((member) {
      return member.toLowerCase().contains(query.toLowerCase());
    }).toList();

    setState(() {
      filteredMembers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MEMBERS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 35, 105, 245),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
        ),
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterMembers,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 213, 224, 255),
              ),
            ),
          ),
          // Members List
          Expanded(
            child: ListView.builder(
              itemCount: filteredMembers.length,
              itemBuilder: (context, index) {
                final member = filteredMembers[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar_placeholder.png'), // Replace with actual images if available
                  ),
                  title: Text(
                    member,
                    style: TextStyle(fontSize: 16),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
