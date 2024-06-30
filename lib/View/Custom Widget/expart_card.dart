import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohid_chowdhury_portfolio/View/myproject.dart';
import 'package:sohid_chowdhury_portfolio/View/skills.dart';
import 'package:url_launcher/link.dart';

class ExpartCard extends StatelessWidget {
  const ExpartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .4,
      width: Get.width * .95,
      margin: const EdgeInsets.all(9),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.yellowAccent,
              Colors.pink,
              Colors.green,
              Colors.blue
            ],
          ),
          borderRadius:BorderRadius.only(
                topLeft: Radius.circular(56),
                bottomRight: Radius.circular(56),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16)
                ),
          boxShadow: [
            BoxShadow(
                color: Colors.black, blurRadius: 9.5, offset: Offset(5, 3.5)),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           
           
            Container(
              height: Get.height * .25,
              width: Get.width * .25,
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.green],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 18,
                        offset: Offset(5, 3.5))
                  ]),
              child:  Center(
                  child: InkWell(
                    onTap:() => Get.to(const Skills()),
                    child:const Text('I AM\nEXPART\nARE ON\nTHOSE\nSECTORS',
                    style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                                    ),
                                  ),
                  )),
            ),
           
           
           
           
           
            Container(
              height: Get.height * .25,
              width: Get.width * .25,
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.green, Colors.blue],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 18,
                        offset: Offset(5, 3.5))
                  ]),
              child:  Center(
                  child: InkWell(
                    onTap: () => Get.to(const ProjectSection()),
                    child:const Text(
                                    'MY\nBUILTED\nPROJECT',
                                    style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                                    ),
                                  ),
                  )),
            ),
            
            
            
            
            
            
            Container(
              height: Get.height * .25,
              width: Get.width * .25,
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.green],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 18,
                        offset: Offset(5, 3.5))
                  ]),
              child:Link(uri: Uri.parse('https://drive.google.com/file/d/1LjzUKyzecQ1R8eIyNLZxvsT3QCYkcqhk/view'),
               builder:(context, followLink) =>
               InkWell(
                onTap: followLink,
                 child:const Center(
                   child:  Text(
                    'MY\nDETAILS\nAND\nRESUME',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                                 ),
                 ),
               ) , 
               )
            ),
          ]),
        ],
      ),
    );
  }
}
