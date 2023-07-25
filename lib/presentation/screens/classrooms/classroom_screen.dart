import 'package:feme/presentation/widgets/navbar/app_nav.dart';
import 'package:flutter/material.dart';

class ClassroomScreen extends StatefulWidget {
  static String name = 'classroom_screen';
  const ClassroomScreen({super.key});

  @override
  State<ClassroomScreen> createState() => _ClassroomScreenState();
}

class _ClassroomScreenState extends State<ClassroomScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: AppNav(),
      body: Text('22222222222222222'),
    );
  }
}
