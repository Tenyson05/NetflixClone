import 'package:flutter/material.dart';
import 'homepage.dart';
import 'customIcons/comingsoon_icons.dart' as cusIcon;

void main() => runApp(Netflix());

class Netflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: NetflixTabBar(),
    );
  }
}
class NetflixTabBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Theme(
          data: ThemeData(
            brightness: Brightness.dark
          ),
          child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
                Tab(icon: Icon(Icons.home,), text: "Home",),
                Tab(icon: Icon(Icons.search), text: "Search"),
                Tab(icon: Icon(cusIcon.Comingsoon.Coming_Soon_2), text: "Coming Soon",),
                Tab(icon: Icon(Icons.file_download), text: "Downloads"),
                Tab(icon: Icon(Icons.list), text: "More"),

              ],
            unselectedLabelColor: Color(0xff999999),
            labelColor: Colors.white,
            indicatorColor: Colors.transparent
          ),
          body: TabBarView(
            children: [
              HomePage(),
              Center( child: Text("Page 2"),),
              Center( child: Text("Page 2.5"),),
              Center( child: Text("Page 3"),),
              Center( child: Text("Page 4"),),
            ],
          ),
        ),
        )
      );
  }
}