import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

class Mylinks extends StatelessWidget {
  const Mylinks({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Link(
                  uri: Uri.parse('https://github.com/MdSohidUllahChowdhury'),
                  builder: (context, followLink) => IconButton(
                        
                        onPressed: followLink,
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          size: 30,
                          color: Colors.black,
                        ),
                      )
                      ),const SizedBox(width: 10,),
              Link(
                  uri: Uri.parse(
                      'https://www.linkedin.com/in/sohid-chowdhury/'),
                  builder: (context, followLink) => IconButton(
                        onPressed: followLink,
                        icon: const Icon(
                          FontAwesomeIcons.linkedin,
                          size: 30,
                          color: Colors.black,
                        ),
                      )),const SizedBox(width: 10,),
              Link(
                  uri: Uri.parse('https://www.facebook.com/shakilchowdhury19'),
                  builder: (context, followLink) => IconButton(
                        onPressed: followLink,
                        icon: const Icon(
                          FontAwesomeIcons.facebook,
                          size: 30,
                          color: Colors.black,
                        ),
                      )),const SizedBox(width: 10,),
              Link(
                  uri: Uri.parse('https://www.instagram.com/shakil_chowdhury19'),
                  builder: (context, followLink) => IconButton(
                        onPressed: followLink,
                        icon: const Icon(
                          FontAwesomeIcons.instagram,
                          size: 30,
                          color: Colors.black,
                        ),
                      )),
            ],
          );
  }
}