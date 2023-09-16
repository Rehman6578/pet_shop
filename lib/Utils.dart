
// create a method for container inside icons and text
  import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  // creat a variable for title , hint text and icon
  final String title;
  final String hintText;
  // add controller for textfield
  final TextEditingController controller;

  TextFields({
    required this.title,
    required this.hintText,
    required this.controller,

  });


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: hintText,
                  hintText: title,
                  labelStyle: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 15,
                  ),

                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}


