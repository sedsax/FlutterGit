import 'package:flutter/material.dart';

import 'login_kayit.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return LoginKayit();
            },
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        minimumSize: Size(300, 40),
      ),
      child: Text('Kayıt Ol'),
    );
  }
}
