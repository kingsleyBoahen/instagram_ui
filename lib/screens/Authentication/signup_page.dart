import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with SingleTickerProviderStateMixin{

TabController?  _controller; 

  @override
  void initState() {
    _controller = TabController(
      length: 2,
      vsync: this, initialIndex: 0
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Image.asset("images/2180662_user_instagram_person_profile_icon-removebg-preview.png")
            ),

            const SizedBox(
              height: 15,
            ),
          
          TabBar(
            controller: _controller,
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: const EdgeInsets.all(0),
            indicatorPadding: const EdgeInsets.all(0),
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            tabs: const [
               Tab(text: "PHONE",),
               Tab(text: "EMAIL",),
            ]),
          
          TabBarView(
            controller: _controller,
            children: const [
                Text("Welcome Phone view"),
                Text("Welcome email view"),
            ]),
        ],
      ),
      
    );
  }
}