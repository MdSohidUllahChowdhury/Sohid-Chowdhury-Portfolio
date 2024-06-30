import 'package:flutter/material.dart';
import 'package:sohid_chowdhury_portfolio/View/Custom%20Widget/profile_card.dart';
import 'package:sohid_chowdhury_portfolio/View/Custom%20Widget/social_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         ProfileCard(),
         SizedBox(height:4),
         SocialCard(),
        ],
      ),
    );
  }
}