import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohid_chowdhury_portfolio/View/Custom Widget/social_links.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin:const EdgeInsets.symmetric(horizontal: 8),
          height: Get.height*0.11,
          width: Get.width*9,
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green, Colors.blue],
               ),
               borderRadius:BorderRadius.only(
                topLeft: Radius.circular(46),
                bottomRight: Radius.circular(46),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 12,
                    offset: Offset(5, 3.5)
                  ),
                ]
          ),

          child:const Column(
            children: [
              SizedBox(height: 8,),
              Text('Connect With Me Following by Social Media Links',
              style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(223, 0, 0, 0),
                  letterSpacing: 1.5,
                ),),

              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Mylinks()
                ],
              )  
            ],
          ),
         );
  }
}