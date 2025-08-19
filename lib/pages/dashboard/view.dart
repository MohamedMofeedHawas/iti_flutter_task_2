import 'package:flutter/material.dart';
import 'package:iti_flutter_task_2/pages/products_gallery/view.dart';
import 'package:iti_flutter_task_2/pages/products_showcase/view.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.directional(start: 13, end: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 4),
                        blurRadius: 4,
                      ),
                    ],

                    color: Colors.red,
                    borderRadius: BorderRadiusDirectional.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "120",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "users",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 4),
                        blurRadius: 4,
                      ),
                    ],
                    color: Colors.green,
                    borderRadius: BorderRadiusDirectional.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "55",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Sales",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 4),
                        blurRadius: 4,
                      ),
                    ],

                    color: Colors.blue,
                    borderRadius: BorderRadiusDirectional.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "30",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Orders",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            Container(
              // margin: EdgeInsetsGeometry.directional(start: 19,end: 19),
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0Xfff7f2fa),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1, 3),
                    blurRadius: 3,
                    spreadRadius: 0.5,
                  ),
                ],
                borderRadius: BorderRadiusDirectional.all(Radius.circular(15)),
              ),
              child: Column(
                children: [
                  Text(
                    "Monthly Report",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.directional(start: 320),
                    child: Icon(Icons.bar_chart, color: Colors.grey, size: 40),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Recent Users",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Container(
              padding: EdgeInsetsGeometry.directional(bottom: 10),
              height: 260,
              width: 400,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 1),
                    blurRadius: 1,
                  ),
                ],
                color: Color(0Xfff7f2fa),
                borderRadius: BorderRadiusDirectional.all(Radius.circular(13)),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Alice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    subtitle: Text(
                      "alice@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: CircleAvatar(
                        child: Text(
                          "A",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    minTileHeight: 4,
                    title: Text(
                      "Bob",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    subtitle: Text(
                      "bob@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: CircleAvatar(
                        child: Text(
                          "B",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    minTileHeight: 5,
                    title: Text(
                      "Charlie",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    subtitle: Text(
                      "charlie@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: CircleAvatar(
                        child: Text(
                          "C",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            Text(
              "Recent Orders",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 1),
                      blurRadius: 1,
                    ),
                  ],
                  color: Color(0Xfff7f2fa),
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(13),
                  ),
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 7),
                      child: ListTile(
                        minTileHeight: 7,
                        trailing: Text(
                          "Shipped",
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        title: Text(
                          "#1001",
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: Icon(Icons.shopping_cart),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 5),
                      child: ListTile(
                        minTileHeight: 7,
                        trailing: Text(
                          "Pending",
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        title: Text(
                          "#1002",
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: Icon(Icons.shopping_cart),
                      ),
                    ),
                    Divider(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(top: 2),
                        child: ListTile(
                          minTileHeight: 7,
                          trailing: Text(
                            "Delivered",
                            style: TextStyle(
                              color: Colors.black87.withOpacity(0.6),
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          title: Text(
                            "#1003",
                            style: TextStyle(
                              color: Colors.black87.withOpacity(0.6),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: Icon(Icons.shopping_cart),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        actionsPadding: EdgeInsetsGeometry.directional(end: 15),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (route) => ProductsGalleryPage()),
              );
            },
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
