import 'package:flutter/material.dart';
import 'package:sign_in/widgets/audio_player.dart';

class Workout extends StatelessWidget {
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyAudioPlayer(),
                        ),
                      );
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyAudioPlayer(),
                        ),
                      );
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyAudioPlayer(),
                        ),
                      );
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyAudioPlayer(),
                        ),
                      );
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyAudioPlayer(),
                        ),
                      );
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
