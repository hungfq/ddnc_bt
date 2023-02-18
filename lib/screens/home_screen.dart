import 'package:flutter/material.dart';
import 'package:tuan2/screens/news_screen.dart';
import 'package:tuan2/screens/bookmark_screen.dart';
import 'package:tuan2/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  late PageController pageController = PageController();

  void onPageChange(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTap(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "NewsApp",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ))
        ],
      ),

      body: PageView(
        controller: pageController,
        onPageChanged: onPageChange,
        children: [
          const NewsScreen(),
          BookmarkScreen(),
          const ProfileScreen(),
          const Text('Feed'),
        ],
      ),

      bottomNavigationBar: Container(
        // let's make our button nav bar float
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          selectedItemColor: Colors.orange.shade900,
          onTap: navigationTap,
          currentIndex: _page,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: "Bookmark",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.rss_feed_rounded),
              label: "Feed",
            ),
          ],
        ),
      ),
    );
  }
}
