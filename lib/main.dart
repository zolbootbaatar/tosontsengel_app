import 'package:flutter/material.dart';
import 'package:tosontsengel_app/Routes/AppRouter.dart';
// ignore_for_file: deprecated_member_use

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      routerConfig: appRouter.config(),
      title: 'Tosontsengel',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFFFFFF),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
