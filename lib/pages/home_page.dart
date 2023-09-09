import 'package:flutter/material.dart';
import 'package:video_player_2/pages/play_video.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int? videoNumber;
    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade600,
        title: const Text(
          "Video Player",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                //text
                Text(
                  "Choose video:",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.yellow.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                //list
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: <Widget>[
                        //video 1
                        GestureDetector(
                          onTap: () {
                            videoNumber = 1;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlayVideo(
                                  theVideoNumber: videoNumber,
                                ),
                              ),
                            );
                          },
                          child: Card(
                            color: Colors.yellow.shade600,
                            child: const ListTile(
                              title: Text(
                                "Tiger",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ),
                              subtitle: Text(
                                "MP4",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  color: Colors.black45,
                                ),
                              ),
                              trailing: Text(
                                "2:12",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),

                        //video 2
                        GestureDetector(
                          onTap: () {
                            videoNumber = 2;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlayVideo(
                                  theVideoNumber: videoNumber,
                                ),
                              ),
                            );
                          },
                          child: Card(
                            color: Colors.yellow.shade600,
                            child: const ListTile(
                              title: Text(
                                "Jaguar",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ),
                              subtitle: Text(
                                "MP4",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  color: Colors.black45,
                                ),
                              ),
                              trailing: Text(
                                "2:06",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
