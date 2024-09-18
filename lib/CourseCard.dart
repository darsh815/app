import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String logoPath;
  final String rating;
  final String lessons;
  final List<String> participants;

  CourseCard({
    required this.title,
    required this.logoPath,
    required this.rating,
    required this.lessons,
    required this.participants,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(logoPath, height: 40),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 20),
            Row(
              children: participants.map((participant) {
                return Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(participant),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text('Participant'),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.star, color: Colors.orange, size: 16),
                Text(rating),
              ],
            ),
            SizedBox(height: 20),

            // Row with Play button and Lessons Text
            Row(
              children: [
                Icon(Icons.play_circle_fill, color: Colors.blue), // Play button icon
                SizedBox(width: 5),
                Text(lessons), // "30 Lessons" text
              ],
            ),
          ],
        ),
      ),
    );
  }
}
