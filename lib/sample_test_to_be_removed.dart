import 'package:flutter/material.dart';

class Leaderboard extends StatelessWidget {
  final List<String> teams = [
    "IIT Guwahati",
    "IIT Kharagpur",
    "NIT Lomad",
    "ADBU",
    "Delhi University",
    "IGDTU"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Main background color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.red, // Header background color
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "LEADERBOARD",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Men's",
                      style: TextStyle(
                        color: Colors.yellow, // Dropdown text color
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.yellow, // Dropdown arrow color
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Leaderboard List
          Expanded(
            child: ListView.builder(
              itemCount: teams.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  color: index % 2 == 0 ? Colors.blue[900] : Colors.blue[800], // Alternating background colors
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${index + 1}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        teams[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
