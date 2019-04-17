import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {

  final TextStyle topMenuStyle = new TextStyle(fontFamily: "Avenir next", fontSize: 15, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.red,
      child: ListView(
        children: <Widget>[
          Container(
            height: 500,
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Series", style: topMenuStyle),
                        Text("Films", style: topMenuStyle),
                        Text("My List", style: topMenuStyle),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            // add button function here
                          },
                        )
                      ],
                    ),
                  )
                ],
            ),
          ),
        ],
      ),
    );
  }
}