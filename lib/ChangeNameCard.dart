import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  final String myText;
  final TextEditingController _nameController;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('images/header_image.jpg', fit: BoxFit.cover),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(myText),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            decoration:
            InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter something here",
                labelText: "name"
            ),
          ),
        )
      ],
    );
  }

  const ChangeNameCard(this.myText, TextEditingController nameController) : _nameController = nameController;
}
