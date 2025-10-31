import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'profile_page.dart';

/// Data model for each news item
class NewsItem {
  final String title;      // News title
  final String category;   // Category (Technology, Sports, etc.)
  final String timeAgo;    // Published time (e.g., "2 hours ago")
  final String image;      // Image URL
  final String content;    // Full news content
  final String source;     // News source

  NewsItem({
    required this.title,
    required this.category,
    required this.timeAgo,
    required this.image,
    required this.content,
    required this.source,
  });
}

/// Sample list of news articles
final List<NewsItem> newsData = [
  // Each NewsItem represents one article
  NewsItem(
    title: 'Elon Musk New Wikipedia',
    category: 'Technology',
    timeAgo: '2 Hours ago',
    image: 'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2184585949-20250728110847600.jpg?c=original&q=w_860,c_fill/f_avif',
    content: 'Inside the changing culture at one of tech biggest companies. Elon Musk launched Grokipedia, his version of Wikipedia on Monday, as the richest man in the world further seeks to create an alternative information and media ecosystem molded to his views...',
    source: 'CNN Indonesia',
  ),
  NewsItem(
    title: 'Why the 5G symbol on your phone does not mean you have 5G',
    category: 'Technology',
    timeAgo: '2 Hours ago',
    image: 'https://ichef.bbci.co.uk/news/480/cpsprodpb/53a3/live/e92037d0-b325-11f0-9c26-756530926d22.jpg.webp',
    content: 'New research suggests that the 5G symbol you see on your screen might not match what you are actually getting in terms of internet speed...',
    source: 'CNN Indonesia',
  ),
  NewsItem(
    title: 'Apple announces new AI features for iPhone',
    category: 'Technology',
    timeAgo: '3 Hours ago',
    image: 'https://i.pcmag.com/imagery/roundups/02CjBAJYDGG9jp5sN0OUJtC-30.fit_lim.size_1050x.jpg',
    content: 'Revolutionary AI integration coming to iOS devices.',
    source: 'CNN Indonesia',
  ),
  NewsItem(
    title: 'Champions League final set for dramatic showdown',
    category: 'Sports',
    timeAgo: '1 Hour ago',
    image: 'https://upload.wikimedia.org/wikipedia/en/d/d0/2025_UEFA_Champions_League_Final_programme.png',
    content: 'Two giants of European football prepare for epic battle.',
    source: 'CNN Indonesia',
  ),
  NewsItem(
    title: 'NBA playoffs heat up with stunning upsets',
    category: 'Sports',
    timeAgo: '2 Hours ago',
    image: 'https://www.theringer.com/_next/image?url=https%3A%2F%2Fwp.theringer.com%2Fwp-content%2Fuploads%2F2025%2F04%2FNBAPlayoffsEntranceSurvey_Getty-Ringer-scaled.jpg&w=3840&q=75&dpl=30069a4fdf3345328d37acaba1d94e643f96c4ac',
    content: 'Underdog teams shock favorites in playoff series.',
    source: 'CNN Indonesia',
  ),
  NewsItem(
    title: 'World Cup qualifiers bring surprise results',
    category: 'Sports',
    timeAgo: '4 Hours ago',
    image: 'https://www.fufa.co.ug/wp-content/uploads/2025/08/FIFA-World-Cup-Qualifiers-2026.png',
    content: 'Major upsets shake up the qualification standings.',
    source: 'CNN Indonesia',
  ),
  NewsItem(
    title: 'Stock market reaches all-time high',
    category: 'Business',
    timeAgo: '30 Minutes ago',
    image: 'https://cdn.mos.cms.futurecdn.net/sjgkU5wMJMmYa82mEJSESL.jpg',
    content: 'Investors celebrate record-breaking trading day.',
    source: 'CNN Indonesia',
  ),
  NewsItem(
    title: 'Tech startups attract record funding',
    category: 'Business',
    timeAgo: '1 Hour ago',
    image: 'https://integrio.net/static/88fdb3f6bf9afde13791a5636c4bbcdd/grants-in-canada.png',
    content: 'Venture capital firms pour billions into innovation.',
    source: 'CNN Indonesia',
  ),
  NewsItem(
    title: 'Global economy shows signs of recovery',
    category: 'Business',
    timeAgo: '3 Hours ago',
    image: 'https://wautier.co.uk/wp-content/uploads/2024/11/Global-Economics-scaled.jpg',
    content: 'Experts predict sustained growth in coming quarters.',
    source: 'CNN Indonesia',
  ),
  NewsItem(
    title: 'Boomtown festival 2026 line-up announced',
    category: 'Entertainment',
    timeAgo: '2 Hours ago',
    image: 'https://ichef.bbci.co.uk/news/1024/cpsprodpb/5c20/live/7388ba30-b427-11f0-ba75-093eca1ac29b.png.webp',
    content: 'The line-up for next year Boomtown music festival has been announced. Madness, Scissor Sisters and Groove Armada will be among the acts taking to the event 12 stages in Hampshire, as well as Mobb Deep and eurodance group Vengaboys. The festival, which is in its 18th year, will be held at Matterley Estate in the South Downs National Park, near Winchester, from 12 to 16 August. Tickets will go on sale on 30 and 31 October at midday. Alongside the main stages that host major acts, organisers said there would be more than 50 hidden venues within the festival themed districts.',
    source: 'CNN Indonesia',
  ),
  NewsItem(
    title: 'Quentin Tarantino reveals what his best movie is ',
    category: 'Entertainment',
    timeAgo: '2 Hours ago',
    image: 'https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-1258226645.jpg?c=original&q=w_860,c_fill/f_avif',
    content: 'Hollywood filmmaker Quentin Tarantino has revealed which of his movies he thinks is the best and its probably not the one you expect. Rather, he says 2009 “Inglourious Basterds” is his best piece of work, while his favorite is his most recent feature film “Once Upon a Time… in Hollywood.”  ',
    source: 'CNN Indonesia',
  ),
  NewsItem(
    title: 'How a cartoon skull became a symbol of defiance in Indonesia',
    category: 'Entertainment',
    timeAgo: '4 Hours ago',
    image: 'https://ichef.bbci.co.uk/news/1024/cpsprodpb/69c3/live/39092f50-72ac-11f0-a0d2-e3caada09ed7.png.webp',
    content: 'In the popular Japanese anime One Piece, black flags bearing a skull with a straw hat are carried by a rowdy crew of pirates who have made it their mission to challenge a draconian regime and fight for freedom. But in July, these emblems started popping up across Indonesia along doorways, on the backs of cars, and painted on walls. For many, they were a response to Indonesian leader Prabowo Subianto call for Indonesians to fly their national red and white flag ahead of the country Independence Day on 17 August. Instead, some Indonesians chose to raise these pirate flags, known as Jolly Rogers, as a symbol of their discontent, with many criticising what they say is an increasingly centralised government led by Prabowo. ',
    source: 'CNN Indonesia',
  ),
];

/// Home Screen - displays categories and news list/grid
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

/// State for HomeScreen
class _HomeScreenState extends State<HomeScreen> {
  String? selectedCategory;    // Stores the currently selected category
  int selectedIndex = 0;       // Index for bottom navigation
  bool isListView = false;     // Toggle between GridView and ListView

  /// List of news categories
  final List<String> categories = [
    'Technology',
    'Sports',
    'Business',
    'Entertainment'
  ];

  /// Filters news based on selected category
  List<NewsItem> get filteredNews {
    if (selectedCategory == null) return newsData;
    return newsData.where((n) => n.category == selectedCategory).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with logo and notification icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left: App icon and title
                  Row(
                    children: const [
                      Icon(Icons.newspaper_outlined, color: Colors.black, size: 28),
                      SizedBox(width: 8),
                      Text(
                        'News',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Feed',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  // Right: Notification icon with blue dot
                  Stack(
                    children: [
                      const Icon(Icons.notifications_none, size: 28, color: Colors.black),
                      Positioned(
                        right: 2,
                        top: 3,
                        child: Container(
                          width: 9,
                          height: 9,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Category bar + layout toggle button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Category News',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 12),
                      // Toggle between Grid and List view
                      InkWell(
                        onTap: () {
                          setState(() {
                            isListView = !isListView; // toggle mode
                          });
                        },
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            isListView ? Icons.grid_view_rounded : Icons.view_list_rounded,
                            size: 22,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Category filter chips
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedCategory == categories[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ChoiceChip(
                      label: Text(categories[index]),
                      selected: isSelected,
                      onSelected: (selected) {
                        setState(() {
                          // Clicking again removes the filter
                          if (isSelected) {
                            selectedCategory = null;
                          } else {
                            selectedCategory = categories[index];
                          }
                        });
                      },
                      backgroundColor: Colors.grey[200],
                      selectedColor: Colors.black,
                      labelStyle: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // Display news list (ListView or GridView)
            Expanded(
              child: isListView
                  // ListView mode
                  ? ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: filteredNews.length,
                      itemBuilder: (context, index) {
                        return NewsListCard(news: filteredNews[index]);
                      },
                    )
                  // GridView mode
                  : GridView.builder(
                      padding: const EdgeInsets.all(16),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,       // Two columns
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.85,  // Card size ratio
                      ),
                      itemCount: filteredNews.length,
                      itemBuilder: (context, index) {
                        return NewsCard(news: filteredNews[index]);
                      },
                    ),
            ),
          ],
        ),
      ),

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          // If profile icon (index 3) is tapped → open profile page
          if (index == 3) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
              (route) => false,
            );
          }
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}

/// Widget for displaying a news card in ListView mode
class NewsListCard extends StatelessWidget {
  final NewsItem news;

  const NewsListCard({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // On tap → open news detail page
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(news: news),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            // Soft shadow effect
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left: News image
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.horizontal(left: Radius.circular(12)),
                color: Colors.grey[200],
              ),
              clipBehavior: Clip.hardEdge,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Network image
                  Image.network(
                    news.image,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Colors.grey[300],
                      child: const Center(
                        child: Icon(Icons.broken_image, color: Colors.grey, size: 40),
                      ),
                    ),
                  ),
                  // Bookmark icon (top-right)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(Icons.bookmark_border, color: Colors.white, size: 16),
                    ),
                  ),
                ],
              ),
            ),

            // Right: Text content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      news.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),

                    // Category label
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        news.category,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Time and avatar
                    Row(
                      children: [
                        const Icon(Icons.access_time, size: 12, color: Colors.grey),
                        const SizedBox(width: 4),
                        Text(
                          news.timeAgo,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                        const Spacer(),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.grey[300],
                          child: const Icon(Icons.person, size: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Widget for displaying a news card in GridView mode
class NewsCard extends StatelessWidget {
  final NewsItem news;

  const NewsCard({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // On tap → open detail screen
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(news: news),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      news.image,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[300],
                        child: const Center(
                          child: Icon(Icons.broken_image, color: Colors.grey, size: 40),
                        ),
                      ),
                    ),
                    // Bookmark icon
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(Icons.bookmark_border, color: Colors.white, size: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Text section
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Title
                    Flexible(
                      child: Text(
                        news.title,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 6),
                    // Category label
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        news.category,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                        ),
                      ),
                    ),
                    const Spacer(),
                    // Time and avatar
                    Row(
                      children: [
                        const Icon(Icons.access_time, size: 11, color: Colors.grey),
                        const SizedBox(width: 3),
                        Flexible(
                          child: Text(
                            news.timeAgo,
                            style: const TextStyle(
                              fontSize: 9,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Spacer(),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.grey[300],
                          child: const Icon(Icons.person, size: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
