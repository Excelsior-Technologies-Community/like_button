import 'package:flutter/material.dart';

import 'package:flutter_like_button/flutter_like_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    /// STATE
    final isLiked = ValueNotifier(false);

    final likeCount = ValueNotifier(120);

    return Scaffold(
      appBar: AppBar(title: const Text('Like Button Demo')),

      body: Center(
        child: LikeButton(
          /// REQUIRED
          isLiked: isLiked,

          likeCount: likeCount,

          /// CUSTOM COLORS
          likedColor: Colors.pink,

          unLikedColor: Colors.black,

          /// CUSTOM ICONS
          likedIcon: Icons.favorite,

          unLikedIcon: Icons.favorite_border,

          /// SIZE
          iconSize: 40,

          /// HAPTIC
          enableHapticFeedback: true,

          /// CUSTOM TEXT STYLE
          countStyle: const TextStyle(
            fontSize: 22,

            fontWeight: FontWeight.bold,

            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
