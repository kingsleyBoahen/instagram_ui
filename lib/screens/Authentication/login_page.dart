import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
   const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
     borderRadius: BorderRadius.circular(10),
     borderSide: const BorderSide(color: Colors.grey),
  );
  
    const customLink = TextStyle(color: Color.fromARGB(255, 3, 3, 53), fontWeight: FontWeight.bold);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SizedBox(
                height: 200,
                child: Image.asset("images/instagram-logo-removebg-preview.png")),
            ),
            
             Padding(
               padding:  const EdgeInsets.all(10.0),
               child: TextField(
                decoration: InputDecoration(
                border: outlineInputBorder,
                focusedBorder: outlineInputBorder,
                hintText: "Phone number, email or username",
                ),
            ),
             ),
            const SizedBox(
              height: 6,
            ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                decoration: InputDecoration(
                border: outlineInputBorder,
                focusedBorder: outlineInputBorder,
                hintText: "Password",
                suffixIcon:  IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye)),
              ),
            ),
          ),

            const SizedBox(
              height: 24,
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {}, 
                  child: const Center(child: Text("Log in", style: TextStyle(color: Colors.white),)),
                  ),
            ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Forgot your login details?", 
                  style: TextStyle(color: Colors.grey),),

                   
                     InkWell(
                    mouseCursor: MouseCursor.defer,
                    child: Text("Get help logging in.",style: customLink,)),
                ],
              ),
              const SizedBox(
                height: 18,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                    Text("OR"),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              
              InkWell(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.facebook,color: Colors.blue,),
                      SizedBox(width: 5,),
                      Text("Log in with Facebook", 
                      style: TextStyle(
                        color: Colors.blue, 
                        fontWeight: FontWeight.bold),)
                    ],
                  ),
              ),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Don't have an account?"),
                Text("Sign up", style: customLink,),
              ],
            ),
          );
        })),
      
    );
  }
}