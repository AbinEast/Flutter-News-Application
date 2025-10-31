import 'package:flutter/material.dart';
import 'package:flutter_application_6/pages/profile_page.dart';
import 'home_page.dart';

/// Detail News Page
class DetailScreen extends StatelessWidget {
  final NewsItem news; // Receives news data from the previous screen

  const DetailScreen({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent AppBar
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            shape: BoxShape.circle, // Rounded back button
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context), // Navigate back
          ),
        ),
        actions: [
          // Share button
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.share, color: Colors.white),
              onPressed: () {}, // Share action (not yet implemented)
            ),
          ),
          // More options button
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.more_horiz, color: Colors.white),
              onPressed: () {}, // More options action (not yet implemented)
            ),
          ),
        ],
      ),

      // Main content area
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header section with news image
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(news.image), // Display image from 'image' property
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                // Gradient overlay for better text visibility
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.4),
                      Colors.transparent,
                      Colors.black.withOpacity(0.4),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),

            // News content section
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(20)), // Rounded top corners
              ),
              transform: Matrix4.translationValues(
                  0, -20, 0), // Overlapping effect with header image
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header section with logo, source, and Follow button
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.red, // Following CNN logo color
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'CNN',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        // News source
                        Text(
                          'posted by ${news.source}',
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const Spacer(),
                        // Follow button (no action yet)
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text('Follow'),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // News title
                    Text(
                      news.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Time and category label
                    Row(
                      children: [
                        const Icon(Icons.access_time,
                            size: 16, color: Colors.grey),
                        const SizedBox(width: 4),
                        Text(
                          news.timeAgo, // Posted time
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(width: 16),
                        // Category label
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            news.category,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // News content text
                    const SizedBox(height: 12),
                    Text(
                      news.content,
                      style: const TextStyle(
                        fontSize: 16,
                        height: 1.6,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black, // Active icon color
        unselectedItemColor: Colors.grey, // Inactive icon color
        onTap: (index) {
          // Handle navigation between pages
          if (index == 0) {
            // Go back to HomeScreen
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
              (route) => false,
            );
          } else if (index == 3) {
            // Navigate to ProfileScreen
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
              (route) => false,
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}
