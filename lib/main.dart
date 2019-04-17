import 'package:flutter/material.dart';

void main() => runApp(Netflix());

class Netflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Netflix",
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryColorBrightness: Brightness.light,
      ),
      home: NetflixTabBar(),
    );
  }
}



class NetflixTabBar extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Theme(
        data: ThemeData(
          brightness: Brightness.dark,
        ),
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home),text: "Home",),
              Tab(icon: Icon(Icons.search),text: "Search",),
              Tab(icon: Icon(Icons.file_download),text: "Downlaod",),
              Tab(icon: Icon(Icons.list),text: "More",),
              ],
            unselectedLabelColor: Colors.white,
            labelColor: Colors.black,
            indicatorColor: Colors.red,
          ),
          body: TabBarView(
            children: <Widget>[
              Center( child: Text("Home")),
              Center( child: Text("Search")),
              Center( child: Text("Downlaod")),
              Center( child: Text("More")),
            ],
          ),
        ),
      ),
    );  
  }
}

