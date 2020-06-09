import 'package:flutter/material.dart';
import 'package:player/main.dart';
import 'package:player/pages/video2.dart';
import 'package:video_player/video_player.dart';
import 'package:swipedetector/swipedetector.dart';
import 'video1.dart';

import '../chewie_list_item.dart';

class video3 extends StatefulWidget {
  @override
  _video3State createState() => _video3State();
}

class _video3State extends State<video3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                margin: EdgeInsets.only(top: 200),
                child: RaisedButton(
                  onPressed: () {
                    print("subscribed");
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFFd92027),
                          Color(0xFF07031a),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child:
                        const Text('Subscribe', style: TextStyle(fontSize: 20)),
                  ),
                ))
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                Color(0xFFd92027),
                Color(0xFF07031a),
              ])),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                        elevation: 10,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Padding(
                          padding: EdgeInsets.all(9.0),
                          child: Image.asset(
                            "images/w.jpg",
                            width: 100,
                            height: 100,
                          ),
                        )),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      "@Adarsh_34",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            DrawerHeader(
                child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      size: 38.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Adarsh Bansal",
                      style: TextStyle(fontSize: 20.0, color: Colors.blueGrey),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.message,
                      size: 38.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Message",
                      style: TextStyle(fontSize: 20.0, color: Colors.blueGrey),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.videocam,
                      size: 38.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Videos",
                      style: TextStyle(fontSize: 20.0, color: Colors.blueGrey),
                    )
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
      body: SwipeDetector(
        onSwipeUp: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        onSwipeDown: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => video2()));
        },
        child: ChewieListItem(
          videoPlayerController: VideoPlayerController.asset(
            'videos/puppy4.mp4',
          ),
        ),
      ),
    );
  }
}
