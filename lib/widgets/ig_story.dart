import 'package:flutter/material.dart';

class IgStory extends StatelessWidget {
  const IgStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
                  Color(0XFFF58529),
                  Color(0XFFFEDA77),
                  Color(0XFFDD2A7B),
                  Color(0XFF8134AF),
             ]),
        shape: BoxShape.circle),
        child: Padding(
              //this padding will be you border size
        padding: const EdgeInsets.all(3.0),
        child: Container(
        decoration: const BoxDecoration(
        color: Colors.white, 
        shape: BoxShape.circle),
        child:  CircleAvatar(
        backgroundColor: Colors.grey,
        foregroundImage: NetworkImage("")
            ),
          ),
        ),
      ),
    ); 

  }
}




