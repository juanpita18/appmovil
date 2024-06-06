import 'package:flutter/material.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:475906733.
class HomeView extends StatelessWidget {
  const HomeView({super.key });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const Text("Soy un menu"),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }



} 