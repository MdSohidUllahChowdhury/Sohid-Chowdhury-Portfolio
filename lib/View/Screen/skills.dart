import 'package:flutter/material.dart';
import 'package:sohid_chowdhury_portfolio/View/Custom%20Widget/skill_card.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Container(
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
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
               const SizedBox(height: 15,),
               
               Container(
                padding:const EdgeInsets.all(16),
                child: const Text('Aspiring software engineer with a passion for innovation and problem-solving. Eager to leverage academic foundation in computer science and hands- on experience in coding to contribute effectively as a software engineering intern. Seeking an opportunity to apply theoretical knowledge to real-world projects, while gaining valuable industry experience and honing technical skills under the guidance of seasoned professionals',
                style: TextStyle(
                letterSpacing: 1.2,
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: Colors.white),
                ),
                ),
                
               const SizedBox(height: 15,),
                
                const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/dart.png'),
                      name: 'Dart'),
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/py.png'),
                      name: 'Python'),
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/js.png'),
                      name: 'Javascript'),
                  ],
                ),
            
                const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/html-icon.png'),
                      name: 'HTML'),
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/css-icon.png'),
                      name: 'CSS'),
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/flutter-icon.png'),
                      name: 'Flutter'),
                  ],
                ),
                const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/bootstrap-icon.png'),
                      name: 'Bootstrap'),
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/firebase-icon.png'),
                      name: 'Firebase'),
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/postman-icon.png'),
                      name: 'Postman'),
                  ],
                ),
                const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/android-studio-icon.png'),
                      name: 'Android'),
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/apple-app-store-icon.png'),
                      name: 'IOS'),
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/code.png'),
                      name: 'Web'),
                  ],
                ),
                const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/mysql-icon.png'),
                      name: 'MySql'),
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/git-icon.png'),
                      name: 'Git'),
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/github-icon.png'),
                      name: 'GitHub'),
                  ],
                ),
                const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/tech-icon.png'),
                      name: 'Machine Learning'),
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/tensorflow-icon.png'),
                      name: 'Tensorflow'),
                    SkillCard(
                      image:AssetImage('lib/Assets/Icons/linux-icon.png'),
                      name: 'Linux'),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}