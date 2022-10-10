import 'package:flutter/material.dart';


class PromptPage extends StatefulWidget {
  const PromptPage({super.key});

  @override
  State<PromptPage> createState() => _PromptPageState();
}

class _PromptPageState extends State<PromptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 100),
                child: SizedBox(
                  height: 200,
                  child: Image.asset("images/instagram-logo-removebg-preview.png")
                  ),
              ),

              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {}, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.facebook,color: Colors.white,),
                    SizedBox(width: 5,),
                    Text("Log in with Facebook", 
                    style: TextStyle(
                      color: Colors.white, 
                      fontWeight: FontWeight.bold),)
                  ],
                ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                      ),
                    ),
                    Text(
                      "OR"
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.8,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const InkWell(child: Text("Sign up with email or phone number", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)),
            ],
          ),
        ),
        bottomSheet: BottomSheet(
        elevation: 5,
        onClosing: () {}, 
        builder: ((context) {
          return SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Don't have an account?", style: TextStyle(color: Colors.grey),),
                Text("Sign up", style: TextStyle(color: Color.fromARGB(255, 7, 7, 53), fontWeight: FontWeight.bold),),
              ],
            ),
          );
        })),
    );
  }
}