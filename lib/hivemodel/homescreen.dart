import 'package:flutter/material.dart';
import 'package:hive_db/hivemodel/ListOfStudent.dart';
import 'package:hive_db/hivemodel/detailscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
       DetailsScreen(),
             Expanded(
              child: StudentList(),
            )
          ],
        )),
    );
  }
}