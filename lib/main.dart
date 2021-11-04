import 'dart:io';
import 'package:avination_web_app/src/home_page.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //ask for permission that app need using permission_handler library
  await Permission.storage.request();
  await Permission.mediaLibrary.request();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avination',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
