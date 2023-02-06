import 'package:flutter/material.dart';

void main() {
  runApp(BasketballPoint());
}

class BasketballPoint extends StatefulWidget {
  @override
  State<BasketballPoint> createState() => _BasketballPointState();
}

class _BasketballPointState extends State<BasketballPoint> {
  //const BasketballPoint({super.key});
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Points Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '${teamAPoints}',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      // const Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      // const Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // text of the Team .
                      Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      // text of 0
                      Text(
                        "$teamBPoints",
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),

                      // Button 1 of add 1 points
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      // Button 2 of add 2 points
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      // Button 3 of add 3 points
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
