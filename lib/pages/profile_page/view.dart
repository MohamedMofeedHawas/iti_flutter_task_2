import 'package:flutter/material.dart';
import 'package:iti_flutter_task_2/pages/products_showcase/view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xff607d8b),
            width: double.infinity,
            height: 200,
            child: Padding(
              padding: EdgeInsetsGeometry.directional(
                start: 17,
                end: 13,
                top: 80,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage(
                      "assets/images/profie_image.jpg",
                    ),
                  ),
                  Expanded(child: SizedBox(width: 330)),
                  Padding(
                    padding: EdgeInsetsGeometry.directional(top: 65),
                    child: Icon(Icons.edit, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsetsGeometry.directional(start: 19, end: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mohamed Mofeed",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0Xff211f24),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.mail),
                    SizedBox(width: 20),

                    Text(
                      "mohamedznuav999@gmail.com",
                      style: TextStyle(
                        color: Color(0xff6f6c71),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.call),
                    SizedBox(width: 20),
                    Text(
                      "+20 1060157100",
                      style: TextStyle(
                        color: Color(0xff6f6c71),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.task),
                    title: Text(
                      "Task 1",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff7b787e),
                      ),
                    ),
                    subtitle: Text(
                      "Complete Your Profile",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    trailing: Icon(
                      Icons.check_circle,
                      color: Color(0Xff4caf50),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.task),
                    title: Text(
                      "Task 2",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff7b787e),
                      ),
                    ),
                    subtitle: Text(
                      "Verify Your Email",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    trailing: Icon(
                      Icons.hourglass_bottom,
                      color: Color(0Xffff9600),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                Card(
                  child: ListTile(
                    leading: Icon(Icons.task),
                    title: Text(
                      "Task 3",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff7b787e),
                      ),
                    ),
                    subtitle: Text(
                      "Add a Phone Number",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    trailing: Icon(Icons.close, color: Colors.red),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(
                      "Settings",
                      style: TextStyle(
                        color: Color(0xff7b787e),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  color: Color(0xff01a9f4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                  ),
                  elevation: 8,
                  shadowColor: Color(0xffc8c2c8),
                  child: ListTile(
                    leading: Text(
                      "premium Member",
                      style: TextStyle(
                        color: Color(0xffb0e2fc),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    trailing: Icon(Icons.star, color: Color(0xffffeb3b)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile Page"),
        actionsPadding: EdgeInsetsGeometry.directional(end: 15),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (route) => ProductsShowCasePage()),
              );
            },
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
