import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircleAvatar(
              
              backgroundImage: 
              AssetImage("assets/pic1.jpeg"),),
          ),
          SizedBox(width: 10,),
          Icon(Icons.notification_add_rounded),
        ],
        backgroundColor: Colors.amberAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          
        ),

      ),
    );
    
  }
}