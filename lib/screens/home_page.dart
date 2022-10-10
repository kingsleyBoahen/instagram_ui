import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/screens/ig_home_page.dart';
import 'package:instagram_ui/widgets/ig_story.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset("images/instagram-logo-removebg-preview.png"),
        actions: [
          IconButton(
            
            onPressed: () {}, 
            icon: const Icon(Icons.add_box_outlined, color: Colors.black,)),

            IconButton(
            
            onPressed: () {}, 
            icon: const Icon(MdiIcons.heartOutline, color: Colors.black,)),
              
            IconButton(
            
            onPressed: () {}, 
            icon: const Icon(FontAwesomeIcons.message, color: Colors.black,)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(
            height: 80,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
                    return const IgStory();
                    },),
            ),
            ListView.builder(
              
              itemCount: 20,
              itemBuilder: ((context, index) {
                return IgHomePage();
              }))
          ],
        ),
      ),
    );
  }
}