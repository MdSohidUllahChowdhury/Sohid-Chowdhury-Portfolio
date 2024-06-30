import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
           height: Get.height *.4,
           width:  Get.width * 9,
           margin:const EdgeInsets.all(15),
            decoration:const BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.green],
               ),
               borderRadius:BorderRadius.only(
                topLeft: Radius.circular(56),
                bottomRight: Radius.circular(56),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 16,
                    offset: Offset(5, 3.5)
                  )
                ]
            ),

            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('lib/Assets/profile.png'),
                  radius: 60,
                ),
                Text('Md Sohid Ullah Chowdhury'),
                Text('Software Engineer'),
              ],
            ),
          )
        ],
      ),
    );
  }
}