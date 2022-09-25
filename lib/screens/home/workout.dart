import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Workout extends StatefulWidget {
  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset("assets/my_video.mp4");

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  DialogBox() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Container(
          width: 200,
          height: 200,
          child: VideoPlayer(_controller),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.play_arrow),
                onPressed: () {
                  // Wrap the play or pause in a call to `setState`. This ensures the
                  // correct icon is shown.
                  setState(() {
                    _controller.play();
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.pause),
                onPressed: () {
                  // Wrap the play or pause in a call to `setState`. This ensures the
                  // correct icon is shown.
                  setState(() {
                    _controller.pause();
                  });
                },
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _controller.pause();
                  });
                  Navigator.of(context).pop();
                },
                icon: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Close"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'WORKOUT',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.deepPurpleAccent,
            ),
          ),
          backgroundColor: Colors.purple[100],
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.deepPurpleAccent,
            icon: Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                    width: 100.0,
                    // child: Divider(
                    //   color: Colors.black,
                    // ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      DialogBox();
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('SQUATS',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text(
                            'No. of sets: 5 Sets \nCaloriesBurn:30 cal \nDuration: 5 mins',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      DialogBox();
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text(' YOGA',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text(
                            'No. of sets: 5 Sets \nCaloriesBurn:30 cal \nDuration: 5 mins',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      DialogBox();
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('PUSH UPS',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text(
                            'No. of sets: 5 Sets \nCaloriesBurn:30 cal \nDuration: 5 mins',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      DialogBox();
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('STRETCHING',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text(
                            'No. of sets: 5 Sets \nCaloriesBurn:30 cal \nDuration: 5 mins',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      DialogBox();
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('ZUMBA',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text(
                            'No. of sets: 5 Sets \nCaloriesBurn:30 cal \nDuration: 5 mins',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
