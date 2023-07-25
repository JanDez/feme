import 'package:feme/presentation/widgets/navbar/app_nav.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: AppNav(),
      body: Text('aquiasasnasnasjasas'),
    );
  }
}
