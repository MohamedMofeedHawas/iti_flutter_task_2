import 'package:flutter/material.dart';
import 'package:iti_flutter_task_2/pages/tech_tools/view.dart';

bool isGrid = true;

List list = <Map<String, String>>[
  {
    "Title": "Network 1",
    "SubTitle": "A random Network Image",
    "ImageURL":
        "https://cdn.al-ain.com/lg/images/2023/3/06/62-165223-most-beautiful-landscapes-india_700x400.jpg",
  },
  {
    "Title": "Asset 1",
    "SubTitle": "App Logo From Assets",
    "ImageURL":
        "https://in.danielwellington.com/cdn/shop/products/731ffc3293c27cb7ae988a77f0db561c635e3b38.png?v=1679929601&width=1500",
  },
  {
    "Title": "Network 2",
    "SubTitle": "Another Network Image",
    "ImageURL":
        "https://cdn.arabsstock.com/uploads/images/128934/enjoying-the-view-of-water-thumbnail-128934.webp",
  },
  {
    "Title": "Asset 2",
    "SubTitle": "App Logo again",
    "ImageURL": "https://img.lovepik.com/photo/60186/5832.jpg_wh860.jpg",
  },
  {
    "Title": "Network 3",
    "SubTitle": "Yet another Image",
    "ImageURL":
        "https://www.saaih.com/files/article/2018/03/%D8%A7%D9%84%D9%86%D8%A8%D8%A7%D8%AA%D8%A7%D8%AA%20%D8%A7%D9%84%D9%85%D9%84%D9%88%D9%86%D8%A9%20%D9%81%D9%8A%20%D8%AD%D8%AF%D9%8A%D9%82%D8%A9%20%D8%A3%D9%88%D8%AA%D9%8A%20%D8%A7%D9%84%D9%86%D8%A8%D8%A7%D8%AA%D9%8A%D8%A9.jpg",
  },
  {
    "Title": "Network 4",
    "SubTitle": "More Images!",
    "ImageURL":
        "https://blogger.googleusercontent.com/img/a/AVvXsEhp9OwmayI8marRur19kZ_arLc2QLRCmBtaJGT2dguURP7gzhGVoJHiFBiHe8wXi9amE2SKCUPV3nAGu4ZZY_swgIuPf6YjCAIyR2GMvjdWsI4r3SK95-sS-8UXpeYxKQmRGr2SBjM7zzKuJs-lVexdjB_uprP8GtUagme8L7KB4kItzxU47095Vj3F=w647-h405-rw",
  },
];

class ProductsGalleryPage extends StatefulWidget {
  const ProductsGalleryPage({super.key});

  @override
  State<ProductsGalleryPage> createState() => _ProductsGalleryPageState();
}

class _ProductsGalleryPageState extends State<ProductsGalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6caeb),
      body: Padding(
        padding: EdgeInsetsGeometry.directional(top: 20),
        child: GridView.builder(
          padding: EdgeInsetsGeometry.directional(start: 10, end: 10),
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 15,
            crossAxisSpacing: 12,
            mainAxisExtent: 220,
            crossAxisCount: isGrid == true ? 2 : 1,
          ),
          itemBuilder: (context, index) => galleryItem(
            list[index]["Title"],
            list[index]["SubTitle"],
            list[index]["ImageURL"],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Products Gallery", style: TextStyle(fontSize: 23)),
        actionsPadding: EdgeInsetsGeometry.directional(end: 5),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
            icon: Icon(Icons.grid_on_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.format_list_bulleted_sharp),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (route) => TechToolsPage()),
              );
            },
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}

Widget galleryItem(String title, String subTitle, String imageURL) {
  return Container(
    width: 180,
    height: 190,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black87.withOpacity(0.6),
          offset: Offset(0, 3),
          blurRadius: 4.8,
          spreadRadius: 1.5,
        ),
      ],
      image: DecorationImage(image: NetworkImage(imageURL), fit: BoxFit.cover),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsetsGeometry.directional(
            start: isGrid == true ? 120 : 310,
            top: 14,
          ),
          child: CircleAvatar(
            radius: 18,
            child: Icon(Icons.zoom_in, color: Colors.purple),
          ),
        ),
        Spacer(),
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black87.withOpacity(0.4),
            borderRadius: BorderRadiusDirectional.only(
              bottomEnd: Radius.circular(20),
              bottomStart: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsGeometry.directional(start: 19, top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.4),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
