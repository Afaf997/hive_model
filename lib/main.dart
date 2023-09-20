import 'package:flutter/material.dart';
import 'package:hive_db/hivemodel/homescreen.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main()async {
await  Hive.initFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hive demo',
      home:HomeScreen() ,

    );
  }
}
