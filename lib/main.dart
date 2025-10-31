import 'package:flutter/material.dart';
import 'pages/home_page.dart';

/// Entry point of the News App
void main() {
  runApp(const NewsApp());
}

/// Main widget of the News App
/// Sets up the theme, title, and initial screen
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Hides the debug banner in the top-right corner
      debugShowCheckedModeBanner: false,

      /// Title of the application
      title: 'NewsFeed',

      /// Application theme configuration
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),

      /// The first screen displayed when the app is launched
      home: const HomeScreen(),
    );
  }
}
