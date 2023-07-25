import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static String name = 'profile_screen';

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // bottomNavigationBar: AppNav(),
      body: Text('1111111111111111111'),
    );
  }
}
