import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PhoneOption extends StatelessWidget {

  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(2),
    borderSide: const BorderSide(color: Colors.grey)

  );
   PhoneOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
        TextField(
          decoration: InputDecoration(
            focusedBorder: outlineInputBorder,
            border: outlineInputBorder,
            prefixText: "GH +233  | ",
            prefixStyle: const TextStyle(color: Color.fromARGB(255, 66, 66, 66,),  fontWeight: FontWeight.bold),
            hintText: "Phone"
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        const Text("You may receive SMS notifications from us for security and"),
        const Text("Login"),
       ],
    );
  }

}
