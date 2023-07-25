import 'package:feme/presentation/widgets/navbar/app_nav.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  static String name = 'report_screen';
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: AppNav(),
      body: Text('222222222222222'),
    );
  }
}
