import 'package:flutter/material.dart';


class NameAndPassword extends StatefulWidget {

  const NameAndPassword({super.key});

  @override
  State<NameAndPassword> createState() => _NameAndPasswordState();
}

class _NameAndPasswordState extends State<NameAndPassword> {
  bool value = false;

  var outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(color: Color.fromARGB(255, 179, 176, 176)) 
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const SizedBox(height: 100,),
          const Text("NAME AND PASSWORD", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),

          const SizedBox(height: 24,),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Full name",
                focusedBorder: outlineInputBorder,
                border: outlineInputBorder,
                filled: true,
                fillColor: Colors.grey[250],
              ),
            ),
          ),

          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Password",
                focusedBorder: outlineInputBorder,
                border: outlineInputBorder,
                filled: true,
                fillColor: Colors.grey[250],
              ),
            ),
          ),
           
           const SizedBox(
            height: 20,
           ),
           Row(
            children: [
              Checkbox(
                value: value, onChanged: (bool? value) {
                  setState(() {
                    this.value = value!;
                  });
                }),

                const Text("Remember password"),

                const SizedBox(
                  height: 20,
                ),       
            ],
           ),
           Padding(
             padding: const EdgeInsets.all(10),
             child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {}, 
             child: const Center(child: Text("Continue and sync contacts", style: TextStyle(color: Colors.white),)),
             ),
           ),
           const SizedBox(height: 22,),

           const InkWell(
            child: Text("Continue without syncing contacts", 
            style: TextStyle(color: Colors.blue),
            )
          ),
          
          // Column(
          //   children: [
          //     Text("Your contacts will be periodically synced nad stored on Instagram servers to help you and others find friends. and to help us provide better service. To remove contacts. go to Settings and disconnct. Learn More." , textAlign: TextAlign.center,),
          //   ],
          // ),
        ],
      ),
    );
  }
}