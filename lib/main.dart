import 'package:flutter/material.dart';

import 'custom_painter_example/bouncing_ball_animation.dart';

void main() {
  runApp(const MyApp());
}

// implicit Animation
// These animation run when property of inside widget run or retrivel
// explicit Animation
// These animation run when we explicity animate any widget
// we tell animation when to happen and when not to happen
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BouncingBallAnimation(),
    );
  }
}
