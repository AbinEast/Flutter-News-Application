import 'package:flutter/material.dart';
import 'home_page.dart';

// Profile Page (Profile Screen)
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Profile image URL
  final String profileImageUrl =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/CNN_International_logo.svg/1200px-CNN_International_logo.svg.png';

  // List of posts containing image URLs, view count, and type (video/image)
  final List<Map<String, dynamic>> posts = [
    {
      'image':
          'https://media.cnn.com/api/v1/images/stellar/prod/2025-10-05t183515z-2023691429-rc2u5ham5p7t-rtrmadp-3-asia-weather-china-everest-20251029054408513.JPG?c=original&q=w_860,c_fill/f_avif',
      'views': 4445,
      'isVideo': false,
    },
    {
      'image':
          'https://media.cnn.com/api/v1/images/stellar/prod/lead-best-travel-shoes-cnnu.jpg?c=16x9&q=h_653,w_1160,c_fill/f_avif',
      'views': 3299,
      'isVideo': true,
    },
    {
      'image':
          'https://media.cnn.com/api/v1/images/stellar/prod/2025-10-29t010327z-1171229687-mt1usatoday27440817-rtrmadp-3-mlb-world-series-toronto-blue-jays-at-los-angeles-dodgers.JPG?c=original&q=w_860,c_fill/f_avif',
      'views': 871,
      'isVideo': false,
    },
    {
      'image':
          'https://media.cnn.com/api/v1/images/stellar/prod/2025-10-01t084905z-1992469859-rc2e81a4a391-rtrmadp-3-india-aviation-leasing.JPG?c=original&q=w_860,c_fill/f_avif',
      'views': 5599,
      'isVideo': true,
    },
    {
      'image':
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2241108223.jpg?c=original&q=w_860,c_fill/f_avif',
      'views': 1802,
      'isVideo': false,
    },
    {
      'image':
          'https://media.cnn.com/api/v1/images/stellar/videothumbnails/85088316-68509020-generated-thumbnail.jpg?c=16x9&q=h_540,w_960,c_fill',
      'views': 208,
      'isVideo': true,
    },
    {
      'image':
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2221372708.jpg?c=16x9&q=w_1316,c_fill/f_webp',
      'views': 958,
      'isVideo': false,
    },
    {
      'image':
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2240465040-20251026225410126.jpg?c=original&q=w_860,c_fill/f_avif',
      'views': 4020,
      'isVideo': true,
    },
    {
      'image':
          'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2242705715-20251025043556514.jpg?c=original&q=w_1202,c_fill/f_avif',
      'views': 740,
      'isVideo': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar section at the top of the profile page
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          // Back button to navigate to Home
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
              (route) => false,
            );
          },
        ),
        // Profile page title
        title: const Text(
          'cnn.indo',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          // Menu button at the top right corner
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      // Main content of the profile page
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Profile picture
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(profileImageUrl),
            backgroundColor: Colors.grey[200],
          ),
          const SizedBox(height: 12),
          // Account name
          const Text(
            'CNN Indonesia',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // Post and Followers count
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Column(
                children: [
                  Text('640',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('Post', style: TextStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(width: 50),
              Column(
                children: [
                  Text('920K',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('Followers', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Content category buttons (images or videos)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.insert_drive_file_outlined,
                    color: Colors.black87),
                onPressed: () {},
              ),
              IconButton(
                icon:
                    const Icon(Icons.videocam_outlined, color: Colors.black87),
                onPressed: () {},
              ),
            ],
          ),

          const Divider(),

          // GridView displaying the list of posts (images/videos)
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(2),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 columns per row
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    // Post image
                    Image.network(
                      post['image'],
                      fit: BoxFit.cover,
                    ),
                    // Overlay for icon and view count
                    Positioned(
                      top: 6,
                      left: 6,
                      child: Row(
                        children: [
                          Icon(
                            post['isVideo']
                                ? Icons.play_arrow
                                : Icons.image,
                            color: Colors.white,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${post['views']}',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3, // Indicates the Profile tab is active
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Navigate to Home when the Home tab is pressed
          if (index == 0) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
              (route) => false,
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
