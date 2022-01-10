import 'package:flutter/material.dart';
import 'package:ui_facebook/view/NotificationScreen.dart';
import 'package:ui_facebook/view/PageScreen.dart';
import 'package:ui_facebook/view/index_screen.dart';
import 'package:ui_facebook/view/menu_screen.dart';
import 'package:ui_facebook/view/watch_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Container(
            child: DefaultTabController(
              length: 5,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  title: Text(
                    'FACEBOOK',
                    style: TextStyle(
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  actions: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/icons/search.png',
                            width: 25,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Image.asset(
                            'assets/icons/messenger.png',
                            width: 25,
                          ),
                        ),
                        // Container(
                        //   child: CircleAvatar(
                        //     radius: 45,
                        //     backgroundImage: NetworkImage(
                        //         'https://bloganh.net/wp-content/uploads/2021/03/chup-anh-dep-anh-sang-min.jpg'),
                        //   ),
                        // ),
                      ],
                    )
                  ],
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.home,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      Tab(
                          icon: Image.asset(
                        'assets/icons/watch-movie.png',
                        width: 30,
                      )),
                      Tab(
                        icon: Icon(
                          Icons.flag,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.notifications_active,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.menu,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                body: Container(
                  child: TabBarView(
                    children: [
                      Container(child: IndexScreen()),
                      Container(
                        child: WatchScreen(),
                      ),
                      Container(
                        child: PageScreen(),
                      ),
                      Container(
                        child: NotificationScreen(),
                      ),
                      Container(
                        child: MenuScreen(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
