import 'package:flutter/material.dart';
import 'CourseCard.dart'; // Import the course card widget
import 'CourseDetailPage.dart'; // Import CourseDetailsPage

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 3; // Default to Profile tab (set Profile icon to green)

  void _onItemTapped(int index) {
    if (index == 0) {
      // If the Home icon is tapped, navigate to the CourseDetailsPage
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CourseDetailsPage()),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/profile_image.jpg'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Christiana Amandla',
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Lets Learning to smart!',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.search, color: Colors.black),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Course Status Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mathematics Course',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_today, size: 16),
                          SizedBox(width: 5),
                          Text('19 Nov, 2023'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.check_circle, color: Colors.green),
                          SizedBox(height: 5),
                          Text('Completed'),
                          Text('20'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.access_time, color: Colors.green),
                          SizedBox(height: 5),
                          Text('Hours Spent'),
                          Text('455'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Popular Course Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Course',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 10),

            // Courses List
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CourseCard(
                    title: 'Photoshop Editing Course',
                    logoPath: 'assets/Adobe_Illustrator_CC_icon.svg.png',
                    rating: '4.8',
                    lessons: '30 Lessons',
                    participants: ['assets/user1.jpg', 'assets/user2.jpg', 'assets/user3.jpg'],
                  ),
                  CourseCard(
                    title: 'Illustrator Editing Course',
                    logoPath: 'assets/Adobe_Photoshop_CC_icon.svg.png',
                    rating: '4.8',
                    lessons: '30 Lessons',
                    participants: ['assets/user1.jpg', 'assets/user2.jpg', 'assets/user3.jpg'],
                  ),
                  CourseCard(
                    title: 'Adobe Xd Editing Course',
                    logoPath: 'assets/images.png',
                    rating: '4.8',
                    lessons: '30 Lessons',
                    participants: ['assets/user1.jpg', 'assets/user2.jpg', 'assets/user3.jpg'],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar with Icons
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _selectedIndex == 0 ? Colors.lightGreen : Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: _selectedIndex == 1 ? Colors.lightGreen : Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none, color: _selectedIndex == 2 ? Colors.lightGreen : Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, color: _selectedIndex == 3 ? Colors.lightGreen : Colors.grey),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
