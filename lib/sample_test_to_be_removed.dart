import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          title: Text('Basketball Score Dialog'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return BasketballScoreDialog(
                    title: 'BASKET BALL',
                    team1: 'ADBY',
                    team2: 'IITG',
                    score: '12-17',
                    court: 'COURT 1',
                  );
                },
              );
            },
            child: Text('Show Score Dialog'),
          ),
        ),
      ),
    );
  }
}

class BasketballScoreDialog extends StatelessWidget {
  final String title;
  final String team1;
  final String team2;
  final String score;
  final String court;

  BasketballScoreDialog({
    required this.title,
    required this.team1,
    required this.team2,
    required this.score,
    required this.court,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        color: Colors.black,
        width: 300,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            CustomPaint(
              child: Container(
                color: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Team 1
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.pinkAccent),
              ),
              child: Text(
                team1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(height: 10),

            // "vs"
            Text(
              'vs',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),

            // Team 2
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.pinkAccent),
              ),
              child: Text(
                team2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Score
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.pinkAccent),
              ),
              child: Text(
                score,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Court
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.pinkAccent),
              ),
              child: Text(
                court,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
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
