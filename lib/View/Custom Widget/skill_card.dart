import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkillCard extends StatelessWidget {
  final AssetImage image;
  final String name;
  const SkillCard({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    
    return Container(
                  margin:const EdgeInsets.fromLTRB(3, 2, 3, 2),
                  height:Get.height*.18,
                  width: Get.width*.30,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Colors.black,
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CircleAvatar(
                      backgroundImage: image,
                     radius: 50,
                    ),
                   const  SizedBox(height: 25,),
                     Text(name,
                   style:const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                );
  }
}