import 'package:flutter/material.dart';
import 'CourseDetailPage.dart';

class PaymentSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Top checkmark icon and surrounding shapes
              Stack(
                alignment: Alignment.center,
                children: [
                  // Decorative shapes around the checkmark
                  Positioned(
                    top: -20,
                    left: -30,
                    child: Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 20,
                    ),
                  ),
                  Positioned(
                    top: -10,
                    right: -40,
                    child: Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 15,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: -20,
                    child: Icon(
                      Icons.circle,
                      color: Colors.blueAccent,
                      size: 12,
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    right: -30,
                    child: Icon(
                      Icons.star,
                      color: Colors.purpleAccent,
                      size: 25,
                    ),
                  ),

                  // Checkmark icon with circle background
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.check_circle,
                        size: 60,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Payment Success and Amount Text
              Text(
                "Payment Success",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "\$35.00",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 20),

              // Transaction Details Card
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // Profile Icon
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/user2.png', // Replace with a local user profile image
                            ),
                            radius: 18,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Christiana Amandla', // Replace with dynamic data
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      // Course Name
                      Text(
                        "Adobe XD Editing Course", // Replace with dynamic data
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 10),

                      // ID Transcription and Invoice Date
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ID Transcription",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "TA11231PW", // Replace with dynamic data
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Invoice Date",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "Nov 14, 2023", // Replace with dynamic data
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Barcode Image (replace with actual asset)
              Image.asset(
                'assets/images1.png', // Ensure you have this image in your assets
                height: 80,
              ),

              SizedBox(height: 20),

              // Done Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to the next screen on button press
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CourseDetailsPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                ),
                child: Text(
                  "Done",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
