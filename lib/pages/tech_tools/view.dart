import 'package:flutter/material.dart';

import '../../cores/view.dart';


List <ToolTechItem> list = [
  ToolTechItem(title: "Flutter", subTitle: "Cross-platform framework", secondaryTitle: "Build beautiful native apps in record time",imageURL:"assets/images/flutter-logo.png" ,),
  ToolTechItem(title: "Dart", subTitle: "Programming Language", secondaryTitle: "Optimized for UI, Developed By Google",imageURL: "assets/images/dart_logo.png",),
  ToolTechItem(title: "Firebase", subTitle: "Backend as a Service", secondaryTitle: "RealTime Database, auth, and More",imageURL: "assets/images/firbase_logo.webp",),
  ToolTechItem(title: "GitHub", subTitle: "Code Hosting", secondaryTitle: "Host and Review Code, Mange Projects",imageURL: "assets/images/github_logo.jpg",),
  ToolTechItem(title: "VS Code", subTitle: "Code Editor", secondaryTitle: "Free, Open Source Code Editor by Microsoft",imageURL: "assets/images/vs_code logo.jpg",),
  ToolTechItem(title: "Android", subTitle: "Mobile OS", secondaryTitle: "Most Popular Mobile Operating System",imageURL: "assets/images/android_logo.png",),

];
class TechToolsPage extends StatelessWidget {
  const TechToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f2fa),
body: ListView.builder(itemBuilder: (context, index) => card(list[index].title, list[index].subTitle, list[index].secondaryTitle, list[index].imageURL,),itemCount: list.length,),
      appBar: AppBar(title: Text("Tech Tools"), centerTitle: true),
    );
  }
}


Widget card (String title, String subTitle, String secondaryTitle, String imageURL){
  return       Padding(
    padding: const EdgeInsetsGeometry.directional(top: 10,start: 12,end: 12,bottom: 2),
    child: Card(
      elevation: 9,
      shadowColor: Colors.black,
      color: Colors.white,
      child: ListTile(
        iconColor: Color(0xff8e6cca),
        contentPadding: EdgeInsetsGeometry.directional(start: 9,bottom: 15,top: 15,end: 18),
        leading: CircleAvatar(radius: 28,backgroundColor: Colors.white,backgroundImage: AssetImage(imageURL),),
        title: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(subTitle,style: TextStyle(color: Color(0xff8e6cca),fontWeight: FontWeight.bold),),
            Text(secondaryTitle,style: TextStyle(color: Colors.black87.withOpacity(0.4),fontWeight: FontWeight.bold))
          ],
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    ),
  );

}