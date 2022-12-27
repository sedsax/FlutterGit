import 'package:flutter/material.dart';
import 'package:kod_tasarim/login_giris.dart';
import 'package:kod_tasarim/login_kayit.dart';

import 'buttons.dart';

class LoginAnasayfa extends StatelessWidget {
  const LoginAnasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "FlutApp Ekibine",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "HOŞGELDİNİZ",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('images/christmas.jpg'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return LoginGiris();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.red,
                minimumSize: Size(300, 40),
              ),
              child: Text('Giriş Yap'),
            ),
            Buttons(),
          ],
        ),
      ),
    );
  }
}
