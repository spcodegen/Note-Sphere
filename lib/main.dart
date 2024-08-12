import 'package:flutter/material.dart';
import 'package:notes_sphere/utils/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "NoteSphere",
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
