import 'package:flutter/material.dart';

import 'PaymentSuccessPage.dart';

// Define the ProfilePage
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: const Text('Profile Page'),
      ),
    );
  }
}

// Define the PaymentPage
class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: const Text('Payment Page'),
      ),
    );
  }
}

// Define the CourseDetailsPage
class CourseDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
        centerTitle: true,
        title: const Text(
          'Details',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course Info Card
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // "Our Student" Text
                  const Text(
                    'Our Student',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),

                  // Student Profiles
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/student1.jpg'),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/student2.jpg'),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/student3.jpg'),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/student4.jpg'),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/student5.jpg'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Course Title and Description
                  const Text(
                    'Photoshop Editing Course',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  const SizedBox(height: 16),

                  // Course Details Row with Play Button and Timer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Play Button Icon with Round Border
                          Container(
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.lime, width: 2),
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Colors.lime,
                              size: 12,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '30 Lessons',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          // Timer Icon without Border
                          const Icon(
                            Icons.access_time,
                            color: Colors.lime,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '13h 30min',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Video Section Title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Video',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Video List
            Expanded(
              child: ListView.builder(
                itemCount: 4, // Add your lessons here
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.lock, color: Colors.grey),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Lesson ${index + 1}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(height: 4),
                                const Text('Duration: 3h 30min',
                                    style: TextStyle(color: Colors.black54)),
                              ],
                            ),
                          ],
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.play_arrow, color: Colors.white),
                          label: const Text('Play Video'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lime, // Lime green color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),

            // Enroll Button with Bookmark Icon
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.lime, // Lime green background
                    borderRadius: BorderRadius.circular(12.0), // Rounded rectangle border
                    border: Border.all(color: Colors.lime, width: 2), // Border with green lime color
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.bookmark, color: Colors.white), // Bookmark icon
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaymentSuccessPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Colors.lime, // Green lime color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), // Rounded corners
                      ),
                    ),
                    child: const Text(
                      'Enroll Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
