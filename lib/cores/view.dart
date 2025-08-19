

import 'package:flutter/material.dart';

class ToolTechItem {
 late String title, subTitle, secondaryTitle,imageURL ;


 ToolTechItem({required this.title, required this.subTitle, required this.secondaryTitle,required this.imageURL});


 Widget imageItem (String imageURL){
  this.imageURL = imageURL;
  return Image.asset(imageURL);
 }
}



class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

     child: Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
        elevation: 15,
          shadowColor: Colors.black87.withOpacity(0.9),
          color: Colors.white,
         child: ListTile(
           contentPadding: EdgeInsetsGeometry.directional(start: 9,bottom: 15,top: 15,end: 18),
           leading: CircleAvatar(radius: 28,backgroundColor: Colors.white,),
          title: Text("Flutter",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Cross-platform framwork",style: TextStyle(color: Color(0xff8e6cca),fontWeight: FontWeight.bold),),
             Text("Build beautiful native apps in record time",style: TextStyle(color: Colors.black87.withOpacity(0.4),fontWeight: FontWeight.bold))
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios),
         ),
        ),
      ),
     ),
    );
  }
}
