import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        fillColor: Colors.red[100],
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: EdgeInsets.only(top: 14),
        prefixIcon: Icon(
          Icons.email,
          color: Colors.grey[800],
        ),
        hintText: 'Email',
        hintStyle: TextStyle(
          color: Colors.grey[800],
        ),
      ),
    );
  }
}
