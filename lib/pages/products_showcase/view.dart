import 'package:flutter/material.dart';
import 'package:iti_flutter_task_2/pages/dashboard/view.dart';

class ProductsShowCasePage extends StatelessWidget {
  const ProductsShowCasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 3),
                    spreadRadius: 0,
                    blurRadius: 5,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(19),
                  bottomLeft: Radius.circular(19),
                ),
                color: Colors.white,
              ),
              height: 310,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://astore.pk/cdn/shop/files/13_15e5453b-a1c9-403c-90f4-9924fb652c60.jpg?v=1691421443",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: AlignmentDirectional.center,
                        color: Colors.red,
                        height: 30,
                        width: 50,
                        child: Text(
                          "New",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsetsGeometry.directional(start: 10),
                    child: Text(
                      "Product Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsetsGeometry.directional(start: 10),
                    child: Text(
                      "\$99.99",
                      style: TextStyle(
                        color: Color(0xff9bcd9e),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.directional(
                      start: 260,
                      top: 5,
                      end: 3,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white.withAlpha(240),
                        elevation: 1.9,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Buy Now",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 3),
                    spreadRadius: 0,
                    blurRadius: 5,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(19),
                  bottomLeft: Radius.circular(19),
                ),
                color: Colors.white,
              ),

              height: 310,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/speaker.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsetsGeometry.directional(start: 10),
                    child: Text(
                      "Product Asset",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsetsGeometry.directional(start: 10),
                    child: Text(
                      "\$49.99",
                      style: TextStyle(
                        color: Color(0xff9bcd9e),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.directional(
                      start: 260,
                      top: 5,
                      end: 3,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white.withAlpha(240),
                        elevation: 1.9,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Buy Now",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Product Showcase"),
        actionsPadding: EdgeInsetsGeometry.directional(end: 15),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (route) => DashboardPage()),
              );
            },
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
