import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/link.dart';


class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
           height: Get.height *.36,
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

            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                
                    const Text("Hey, I'm",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(223, 0, 0, 0),
                      letterSpacing: 1.5,
                    ),),  
                    const Text('Md Sohid Ullah Chowdhury',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(226, 168, 241, 51),
                      letterSpacing: 1.5,
                    ),),
                    const Text('Software Engineer from Dhaka',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(223, 0, 0, 0),
                      letterSpacing: 1.5,
                    ),
                    ),
                    const Text('trying to cause a positve impact through\ntechnology.',
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(223, 0, 0, 0),
                      letterSpacing: 1.2,
                    ),
                    ),
                    
                    const SizedBox(height: 15,),
                    Link(
                      uri: Uri.parse('https://drive.google.com/file/d/1LjzUKyzecQ1R8eIyNLZxvsT3QCYkcqhk/view'),
                      builder: (context, followLink) => ElevatedButton(
                        style:const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.amber)
                        ),
                        onPressed: followLink,
                         child:const Text("HIRE ME",
                         style:TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700
                         ) ,)),
                    )
                      ],
                    ),
                     const CircleAvatar(
                      backgroundImage: AssetImage('lib/Assets/profile.png'),
                      radius: 70,
                    ),
                  ],
                  
                ),
                
                const SizedBox(height: 30,),
                Container(
                  height: Get.height*.085,
                  width: Get.width*.9,
                  decoration:const BoxDecoration(
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
                    borderRadius: BorderRadius.all(Radius.circular(16))
                  ),

                  child:const Padding(
                    padding: EdgeInsets.all(8.0),
                    child:  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(child: Text('11+\nProject',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),)),
                        Center(child: Text('1+\nExperience',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),)),
                        Center(child: Text('97%\nPositve FeedBack',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),)),
                        Center(child: Text('3\nTeam Lead',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),)),
                      ],
                    ),
                  ),
                )

              ],
            ),
          );
  }
}