import 'package:facebook_clone/data/user_data.dart';
import 'package:facebook_clone/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/tabs/feed_tab_screen.dart';
import '../screens/tabs/reels_tab_screen.dart';

class FacebookAppNavigationHost extends StatefulWidget {
  const FacebookAppNavigationHost({Key? key}) : super(key: key);

  @override
  State<FacebookAppNavigationHost> createState() =>
      _FacebookAppNavigationHostState();
}

class _FacebookAppNavigationHostState extends State<FacebookAppNavigationHost>
    with AutomaticKeepAliveClientMixin {
  var currentIndex = 0;

  Widget buildAppBody({required int index}) {
    switch (index) {
      case 0:
        return const HomeScreenTab();
      case 1:
        return Container(
          child: const Center(
            child: Text('VideoScreen'),
          ),
        );
      case 2:
        return Container(
          child: const Center(
            child: Text('ProfileScreen'),
          ),
        );
      case 3:
        return Container(
          child: const Center(
            child: Text('GroupScreen'),
          ),
        );
      default:
        return Container(
          child: const Center(
            child: Text('NotificationScreen'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'facebook',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.blueAccent,
              ),
        ),
        actions: [
          const Padding(
            padding: horizontalSpacing,
            child: Icon(CupertinoIcons.search),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5, top: 9),
                child: CircleAvatar(
                  radius: 18,
                  child: ClipOval(
                    child: (Image.network(
                      userData.profilePhotoUrl,
                      fit: BoxFit.cover,
                      height: 36,
                      width: 36,
                    )),
                  ),
                ),
              ),
              if (userData.isOnline!)
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: buildAppBody(index: currentIndex),
      bottomNavigationBar: buildBottomBar(),
    );
  }

  Widget buildBottomBar() {
    List<BottomNavigationBarItem> menuItem = [
      const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined), label: 'Home'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.video_collection_outlined), label: 'Video'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline), label: 'Profile'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.groups_outlined), label: 'Group'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.notification_add_outlined), label: 'Notification'),
    ];

    return BottomNavigationBar(
      currentIndex: currentIndex,
      showSelectedLabels: false,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: menuItem,
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const Padding(
        padding: EdgeInsets.symmetric(vertical: defaultSpacer / 2),
        child: Text("Feelds"),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: defaultSpacer / 2),
        child: Text('Reels'),
      ),
    ];

    return SizedBox(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 0,
            bottom: TabBar(
              tabs: tabs,
              labelColor: Colors.blueAccent,
              unselectedLabelColor: Colors.grey,
            ),
          ),
          body: TabBarView(
            children: [
              const FeedContentTab(),
              ReelContentTab(),
            ],
          ),
        ),
      ),
    );
  }
}
