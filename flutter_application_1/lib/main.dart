import 'package:flutter/material.dart';
import 'pages/Attendance.dart'; // Import your Attendance.dart file here

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Attendance(), // Set the home screen to your Attendance class
    );
  }
}
