import 'package:flutter/material.dart';
import 'package:myapp/routes/app_routes.dart';

 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3241855549.
      title: 'Material app',
      routerConfig:routesConfig,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
      ),
      )
    );
  }
}